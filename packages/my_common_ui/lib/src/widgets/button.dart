import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary;

  Color getColor({required bool enabled}) {
    return switch (this) {
      primary => enabled ? Colors.blue : Colors.blue.withOpacity(0.8),
      secondary => enabled ? Colors.white : Colors.white.withOpacity(0.8),
    };
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.type,
    required this.text,
    required this.onTap,
    this.enabled = true,
    this.fullWidth = true,
    this.leadingIcon,
  });

  final ButtonType type;
  final String text;
  final bool enabled;
  final VoidCallback? onTap;
  final bool fullWidth;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: type.getColor(enabled: enabled),
      minWidth: fullWidth ? double.infinity : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leadingIcon != null) Icon(leadingIcon),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
