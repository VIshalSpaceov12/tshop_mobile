import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/product_provider.dart';
import '../../widgets/product_card.dart';
import '../../widgets/loading_skeleton.dart';
import '../../widgets/error_view.dart';
import '../../widgets/empty_view.dart';
import 'widgets/filter_bar.dart';

class ProductListScreen extends ConsumerStatefulWidget {
  final String? gender;
  final String? category;
  final String? sort;
  final String? search;

  const ProductListScreen({
    super.key,
    this.gender,
    this.category,
    this.sort,
    this.search,
  });

  @override
  ConsumerState<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends ConsumerState<ProductListScreen> {
  late ScrollController _scrollController;
  late TextEditingController _searchController;
  Timer? _debounce;
  late ProductFilters _filters;

  @override
  void initState() {
    super.initState();
    _filters = ProductFilters(
      gender: widget.gender,
      category: widget.category,
      sort: widget.sort,
      search: widget.search,
    );
    _scrollController = ScrollController()..addListener(_onScroll);
    _searchController = TextEditingController(text: widget.search ?? '');
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(productListProvider(_filters).notifier).loadMore();
    }
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      setState(() {
        _filters = query.isEmpty
            ? _filters.copyWith(clearSearch: true)
            : _filters.copyWith(search: query);
      });
    });
  }

  void _onGenderChanged(String? gender) {
    setState(() {
      _filters = gender == null
          ? _filters.copyWith(clearGender: true)
          : _filters.copyWith(gender: gender);
    });
  }

  void _onSortChanged(String? sort) {
    setState(() {
      _filters = _filters.copyWith(sort: sort);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productListProvider(_filters));

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: TextField(
            controller: _searchController,
            onChanged: _onSearchChanged,
            decoration: InputDecoration(
              hintText: 'Search products...',
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              prefixIcon: const Icon(Icons.search, size: 20),
              filled: true,
              fillColor: Colors.grey.shade100,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          FilterBar(
            selectedGender: _filters.gender,
            selectedSort: _filters.sort,
            onGenderChanged: _onGenderChanged,
            onSortChanged: _onSortChanged,
          ),
          Expanded(
            child: _buildBody(state),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(ProductListState state) {
    if (state.isLoading) {
      return const ProductGridSkeleton();
    }

    if (state.error != null && state.products.isEmpty) {
      return ErrorView(
        message: 'Failed to load products',
        onRetry: () => ref.read(productListProvider(_filters).notifier).refresh(),
      );
    }

    if (state.products.isEmpty) {
      return const EmptyView(
        icon: Icons.search_off,
        message: 'No products found',
      );
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(productListProvider(_filters).notifier).refresh(),
      child: GridView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: state.products.length + (state.isLoadingMore ? 2 : 0),
        itemBuilder: (context, index) {
          if (index >= state.products.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          }
          return ProductCard(product: state.products[index]);
        },
      ),
    );
  }
}
