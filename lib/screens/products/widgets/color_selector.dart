import 'package:flutter/material.dart';
import '../../../core/theme.dart';

class ColorSelector extends StatelessWidget {
  final List<MapEntry<String, String>> colors; // name -> hex
  final String? selectedColor;
  final ValueChanged<String> onColorSelected;

  const ColorSelector({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Select Color',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppTheme.darkText,
              ),
            ),
            if (selectedColor != null) ...[
              const SizedBox(width: 8),
              Text(
                selectedColor!,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppTheme.mutedText,
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          children: colors.map((entry) {
            final isSelected = selectedColor == entry.key;
            final color = _parseHex(entry.value);
            return GestureDetector(
              onTap: () => onColorSelected(entry.key),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: Border.all(
                    color: isSelected
                        ? AppTheme.darkText
                        : Colors.grey.shade300,
                    width: isSelected ? 3 : 1,
                  ),
                ),
                child: isSelected
                    ? Icon(
                        Icons.check,
                        size: 18,
                        color: _isLightColor(color)
                            ? Colors.black
                            : Colors.white,
                      )
                    : null,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Color _parseHex(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 6) hex = 'FF$hex';
    return Color(int.parse(hex, radix: 16));
  }

  bool _isLightColor(Color color) {
    final r = (color.r * 255.0).round();
    final g = (color.g * 255.0).round();
    final b = (color.b * 255.0).round();
    return (0.299 * r + 0.587 * g + 0.114 * b) > 128;
  }
}
