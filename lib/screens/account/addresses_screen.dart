import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../models/address.dart';
import '../../providers/address_provider.dart';
import '../../widgets/empty_view.dart';
import '../../widgets/error_view.dart';

class AddressesScreen extends ConsumerStatefulWidget {
  const AddressesScreen({super.key});

  @override
  ConsumerState<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends ConsumerState<AddressesScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(addressProvider.notifier).loadAddresses());
  }

  Future<void> _refresh() async {
    await ref.read(addressProvider.notifier).loadAddresses();
  }

  void _showAddAddressSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => _AddAddressSheet(
        onSave: (data) => ref.read(addressProvider.notifier).createAddress(data),
      ),
    );
  }

  void _confirmDelete(Address address) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Address'),
        content: Text(
          'Are you sure you want to delete the address for "${address.fullName}"?',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              final success = await ref
                  .read(addressProvider.notifier)
                  .deleteAddress(address.id);
              if (mounted && success) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Address deleted')),
                );
              }
            },
            style: TextButton.styleFrom(foregroundColor: AppTheme.error),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addressProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Addresses')),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddAddressSheet,
        backgroundColor: AppTheme.primaryYellow,
        child: const Icon(Icons.add, color: AppTheme.darkText),
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(AddressState state) {
    if (state.isLoading && state.addresses.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.addresses.isEmpty) {
      return ErrorView(
        message: state.error!,
        onRetry: _refresh,
      );
    }

    if (state.addresses.isEmpty) {
      return EmptyView(
        icon: Icons.location_on_outlined,
        message: 'No addresses saved',
        actionLabel: 'Add Address',
        onAction: _showAddAddressSheet,
      );
    }

    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: state.addresses.length,
        itemBuilder: (context, index) {
          final address = state.addresses[index];
          final isLast = index == state.addresses.length - 1;
          return _AddressListCard(
            address: address,
            isLast: isLast,
            onDelete: () => _confirmDelete(address),
          );
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Address list card (without radio button, with delete action)
// ---------------------------------------------------------------------------
class _AddressListCard extends StatelessWidget {
  final Address address;
  final bool isLast;
  final VoidCallback onDelete;

  const _AddressListCard({
    required this.address,
    required this.isLast,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: name + default badge + delete button
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        address.fullName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppTheme.darkText,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (address.isDefault) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryYellow,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'Default',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              IconButton(
                onPressed: onDelete,
                icon: const Icon(Icons.delete_outline, size: 20),
                color: AppTheme.error,
                tooltip: 'Delete address',
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 4),
          // Phone
          Text(
            address.phone,
            style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 4),
          // Full address
          Text(
            '${address.addressLine1}${address.addressLine2 != null ? ', ${address.addressLine2}' : ''}',
            style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
          ),
          Text(
            '${address.city}, ${address.state} - ${address.pincode}',
            style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Bottom sheet with address form (replicates checkout form pattern)
// ---------------------------------------------------------------------------
class _AddAddressSheet extends StatefulWidget {
  final Future<bool> Function(Map<String, dynamic>) onSave;

  const _AddAddressSheet({required this.onSave});

  @override
  State<_AddAddressSheet> createState() => _AddAddressSheetState();
}

class _AddAddressSheetState extends State<_AddAddressSheet> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressLine1Controller = TextEditingController();
  final _addressLine2Controller = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _pincodeController = TextEditingController();
  bool _isDefault = false;
  bool _isSaving = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _addressLine1Controller.dispose();
    _addressLine2Controller.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _pincodeController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isSaving = true);
    final data = {
      'fullName': _fullNameController.text.trim(),
      'phone': _phoneController.text.trim(),
      'addressLine1': _addressLine1Controller.text.trim(),
      if (_addressLine2Controller.text.trim().isNotEmpty)
        'addressLine2': _addressLine2Controller.text.trim(),
      'city': _cityController.text.trim(),
      'state': _stateController.text.trim(),
      'pincode': _pincodeController.text.trim(),
      'isDefault': _isDefault,
    };
    final success = await widget.onSave(data);
    if (mounted) {
      setState(() => _isSaving = false);
      if (success) Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add New Address',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.darkText,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (v) => v != null && v.trim().length >= 2
                    ? null
                    : 'Name is required (min 2 chars)',
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
                keyboardType: TextInputType.phone,
                validator: (v) => v != null && v.trim().length >= 10
                    ? null
                    : 'Phone is required (min 10 digits)',
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _addressLine1Controller,
                decoration: const InputDecoration(labelText: 'Address Line 1'),
                validator: (v) => v != null && v.trim().length >= 5
                    ? null
                    : 'Address is required (min 5 chars)',
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _addressLine2Controller,
                decoration: const InputDecoration(
                  labelText: 'Address Line 2 (Optional)',
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _cityController,
                      decoration: const InputDecoration(labelText: 'City'),
                      validator: (v) => v != null && v.trim().length >= 2
                          ? null
                          : 'City is required',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _stateController,
                      decoration: const InputDecoration(labelText: 'State'),
                      validator: (v) => v != null && v.trim().length >= 2
                          ? null
                          : 'State is required',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _pincodeController,
                decoration: const InputDecoration(labelText: 'Pincode'),
                keyboardType: TextInputType.number,
                validator: (v) => v != null && v.trim().length == 6
                    ? null
                    : 'Pincode must be 6 digits',
              ),
              const SizedBox(height: 12),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Set as default address'),
                value: _isDefault,
                onChanged: (v) => setState(() => _isDefault = v),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _isSaving ? null : _save,
                child: _isSaving
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text('Save Address'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
