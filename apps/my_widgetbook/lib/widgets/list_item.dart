import 'package:flutter/widgets.dart';
import 'package:my_common_ui/my_common_ui.dart';
import 'package:widgetbook/widgetbook.dart';

final listItemComponent = WidgetbookComponent(
  name: 'ListItem',
  useCases: [
    WidgetbookUseCase(
      name: 'default',
      builder: useCaseListItem,
    ),
  ],
);

Widget useCaseListItem(BuildContext context) {
  return ListItem(
    title: context.knobs.string(label: 'Title', initialValue: 'Title'),
    subtitle: context.knobs.string(label: 'Subtitle', initialValue: 'Subtitle'),
    enabled: context.knobs.boolean(label: 'Enabled', initialValue: true),
    onTap: () {},
  );
}