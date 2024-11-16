import 'package:flutter/material.dart';
import 'package:my_common_ui/my_common_ui.dart';
import 'package:widgetbook/widgetbook.dart';

final buttonComponent = WidgetbookComponent(
  name: 'Button',
  useCases: [
    WidgetbookUseCase(
      name: 'default',
      builder: useCaseButton,
    ),
  ],
);

Widget useCaseButton(BuildContext context) {
  return Button(
    type: context.knobs.list(label: 'Type', options: ButtonType.values),
    text: context.knobs.string(label: 'Text', initialValue: 'Text'),
    onTap: () {},
    enabled: context.knobs.boolean(label: 'Enabled', initialValue: true),
    fullWidth: context.knobs.boolean(label: 'Full width', initialValue: true),
    leadingIcon: context.knobs.listOrNull(
        label: 'Leading icon', options: [null, Icons.ac_unit, Icons.abc_sharp]),
  );
}
