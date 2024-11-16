import 'package:flutter/material.dart';
import 'package:my_app/addons.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookApp());
}

final _directories = [
  WidgetbookCategory(
    name: 'Widgets',
    children: [],
  ),
];

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: _directories,
      addons: [
        alignmentAddon,
      ],
    );
  }
}
