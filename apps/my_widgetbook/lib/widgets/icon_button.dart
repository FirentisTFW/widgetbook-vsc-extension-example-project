// This code was generated by the extension.

import 'package:flutter/widgets.dart';
import 'package:my_common_ui/my_common_ui.dart';
import 'package:widgetbook/widgetbook.dart';

final iconButtonComponent = WidgetbookComponent(
  name: 'IconButton',
  useCases: [
    WidgetbookUseCase(
      name: 'default',
      builder: useCaseIconButton,
    ),
  ],
);

Widget useCaseIconButton(BuildContext context) {
  return IconButton(
    type: context.knobs.list(label: 'Type', options: IconButtonType.values),
    text: context.knobs.string(label: 'Text', initialValue: 'Text'),
    onTap: () {},
    enabled: context.knobs.boolean(label: 'Enabled', initialValue: true),
    fullWidth: context.knobs.boolean(label: 'Full width', initialValue: true),
  );
}
