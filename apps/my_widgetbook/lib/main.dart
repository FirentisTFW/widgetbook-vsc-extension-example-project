import 'package:flutter/material.dart';
import 'package:my_app/addons.dart';
import 'package:my_app/widgets/button.dart';
import 'package:my_app/widgets/icon_button.dart';
import 'package:my_app/widgets/list_item.dart';
import 'package:my_app/widgets/loader.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookApp());
}

final _directories = [
  WidgetbookCategory(
    name: 'Widgets',
    children: [
      buttonComponent,
      iconButtonComponent,
      listItemComponent,
      loaderComponent,
    ],
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
