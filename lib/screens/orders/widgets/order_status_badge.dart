import 'package:flutter/material.dart';

class OrderStatusBadge extends StatelessWidget {
  final String status;

  const OrderStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final (bgColor, textColor) = _colors;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: textColor,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  (Color, Color) get _colors {
    switch (status.toUpperCase()) {
      case 'PENDING':
        return (const Color(0xFFFFF3E0), const Color(0xFFE65100));
      case 'CONFIRMED':
        return (const Color(0xFFE3F2FD), const Color(0xFF1565C0));
      case 'SHIPPED':
        return (const Color(0xFFF3E5F5), const Color(0xFF7B1FA2));
      case 'DELIVERED':
        return (const Color(0xFFE8F5E9), const Color(0xFF2E7D32));
      case 'CANCELLED':
        return (const Color(0xFFFFEBEE), const Color(0xFFC62828));
      default:
        return (const Color(0xFFF5F5F5), const Color(0xFF616161));
    }
  }
}
