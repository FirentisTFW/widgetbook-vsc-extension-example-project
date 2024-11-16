import 'package:flutter/material.dart';

enum IconButtonType {
  primary,
  secondary;

  Color getColor({required bool enabled}) {
    return switch (this) {
      primary => enabled ? Colors.blue : Colors.blue.withOpacity(0.8),
      secondary => enabled ? Colors.white : Colors.white.withOpacity(0.8),
    };
  }
}

class IconButton extends StatelessWidget {
  const IconButton({
    super.key,
    required this.type,
    required this.text,
    required this.onTap,
    this.enabled = true,
    this.fullWidth = true,
  });

  final IconButtonType type;
  final String text;
  final bool enabled;
  final VoidCallback? onTap;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: type.getColor(enabled: enabled),
      minWidth: fullWidth ? double.infinity : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
