import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.enabled = true,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final bool enabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: enabled ? Colors.white : Colors.grey,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
