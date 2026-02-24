import 'package:flutter/material.dart';
import '../core/theme.dart';

class PriceTag extends StatelessWidget {
  final double sellingPrice;
  final double basePrice;
  final double discount;
  final double fontSize;

  const PriceTag({
    super.key,
    required this.sellingPrice,
    required this.basePrice,
    required this.discount,
    this.fontSize = 14,
  });

  String _formatPrice(double price) {
    return '\u20B9${price.toInt()}';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _formatPrice(sellingPrice),
          style: TextStyle(
            color: AppTheme.darkText,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (discount > 0) ...[
          const SizedBox(width: 6),
          Text(
            _formatPrice(basePrice),
            style: TextStyle(
              color: AppTheme.mutedText,
              fontSize: fontSize - 2,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            '${discount.toInt()}% off',
            style: TextStyle(
              color: AppTheme.success,
              fontSize: fontSize - 2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ],
    );
  }
}
