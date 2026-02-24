import 'package:flutter/material.dart';
import '../../../core/theme.dart';

class SizeSelector extends StatelessWidget {
  final List<String> sizes;
  final Set<String> outOfStockSizes;
  final String? selectedSize;
  final ValueChanged<String> onSizeSelected;

  const SizeSelector({
    super.key,
    required this.sizes,
    required this.outOfStockSizes,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Size',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppTheme.darkText,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: sizes.map((size) {
            final isOutOfStock = outOfStockSizes.contains(size);
            final isSelected = selectedSize == size;
            return GestureDetector(
              onTap: isOutOfStock ? null : () => onSizeSelected(size),
              child: Container(
                constraints: const BoxConstraints(minWidth: 48),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppTheme.primaryYellow
                      : isOutOfStock
                          ? Colors.grey.shade100
                          : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected
                        ? AppTheme.primaryYellow
                        : isOutOfStock
                            ? Colors.grey.shade200
                            : Colors.grey.shade300,
                  ),
                ),
                child: Text(
                  size,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                    color: isOutOfStock
                        ? Colors.grey.shade400
                        : AppTheme.darkText,
                    decoration:
                        isOutOfStock ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
