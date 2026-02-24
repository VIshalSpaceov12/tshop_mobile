import 'package:flutter/material.dart';
import '../../../core/theme.dart';

class FilterBar extends StatelessWidget {
  final String? selectedGender;
  final String? selectedSort;
  final ValueChanged<String?> onGenderChanged;
  final ValueChanged<String?> onSortChanged;

  const FilterBar({
    super.key,
    this.selectedGender,
    this.selectedSort,
    required this.onGenderChanged,
    required this.onSortChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          // Gender chips
          _GenderChip(label: 'All', value: null, selected: selectedGender, onTap: onGenderChanged),
          const SizedBox(width: 8),
          _GenderChip(label: 'Men', value: 'MEN', selected: selectedGender, onTap: onGenderChanged),
          const SizedBox(width: 8),
          _GenderChip(label: 'Women', value: 'WOMEN', selected: selectedGender, onTap: onGenderChanged),
          const Spacer(),
          // Sort dropdown
          PopupMenuButton<String>(
            onSelected: onSortChanged,
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.sort, size: 20),
                const SizedBox(width: 4),
                Text(
                  _sortLabel(selectedSort),
                  style: const TextStyle(fontSize: 13, color: AppTheme.darkText),
                ),
              ],
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'newest', child: Text('Newest')),
              const PopupMenuItem(value: 'price_low', child: Text('Price: Low to High')),
              const PopupMenuItem(value: 'price_high', child: Text('Price: High to Low')),
              const PopupMenuItem(value: 'discount', child: Text('Discount')),
            ],
          ),
        ],
      ),
    );
  }

  String _sortLabel(String? sort) {
    switch (sort) {
      case 'newest':
        return 'Newest';
      case 'price_low':
        return 'Price \u2191';
      case 'price_high':
        return 'Price \u2193';
      case 'discount':
        return 'Discount';
      default:
        return 'Sort';
    }
  }
}

class _GenderChip extends StatelessWidget {
  final String label;
  final String? value;
  final String? selected;
  final ValueChanged<String?> onTap;

  const _GenderChip({
    required this.label,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selected == value;
    return GestureDetector(
      onTap: () => onTap(value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.primaryYellow : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: AppTheme.darkText,
          ),
        ),
      ),
    );
  }
}
