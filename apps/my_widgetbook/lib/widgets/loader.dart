import 'package:flutter/widgets.dart';
import 'package:my_common_ui/my_common_ui.dart';
import 'package:widgetbook/widgetbook.dart';

final loaderComponent = WidgetbookComponent(
  name: 'Loader',
  useCases: [
    WidgetbookUseCase(
      name: 'default',
      builder: useCaseLoader,
    ),
    WidgetbookUseCase(
      name: '.text',
      builder: useCaseLoaderText,
    ),
    WidgetbookUseCase(
      name: '.icon',
      builder: useCaseLoaderIcon,
    ),
    WidgetbookUseCase(
      name: '.image',
      builder: useCaseLoaderImage,
    ),
    WidgetbookUseCase(
      name: '.randomText',
      builder: useCaseLoaderRandomText,
    ),
    WidgetbookUseCase(
      name: '.randomTextPositional',
      builder: useCaseLoaderRandomTextPositional,
    ),
  ],
);

Widget useCaseLoader(BuildContext context) {
  return Loader(
    context.knobs.list(label: 'Type', options: LoaderType.values),
    semanticsLabel: context.knobs.stringOrNull(label: 'Semantics label'),
  );
}

Widget useCaseLoaderText(BuildContext context) {
  return Loader.text(
    type: context.knobs.list(label: 'Type', options: LoaderType.values),
    semanticsLabel: context.knobs.stringOrNull(label: 'Semantics label'),
    text: context.knobs.stringOrNull(label: 'Text'),
  );
}

Widget useCaseLoaderIcon(BuildContext context) {
  return Loader.icon(
    context.knobs.list(label: 'Type', options: LoaderType.values),
    semanticsLabel: context.knobs.stringOrNull(label: 'Semantics label'),
    icon: context.knobs
        .listOrNull(label: 'Icon', options: [null, ...MyIcon.values]),
  );
}

Widget useCaseLoaderImage(BuildContext context) {
  return Loader.image(
    type: context.knobs.list(label: 'Type', options: LoaderType.values),
    semanticsLabel: context.knobs.stringOrNull(label: 'Semantics label'),
    image: context.knobs
        .listOrNull(label: 'Image', options: [null, ...MyImage.values]),
  );
}

Widget useCaseLoaderRandomText(BuildContext context) {
  return Loader.randomText(
    active: context.knobs.boolean(label: 'Active', initialValue: true),
    label: context.knobs.string(label: 'Label', initialValue: 'Label'),
  );
}

Widget useCaseLoaderRandomTextPositional(BuildContext context) {
  return Loader.randomTextPositional(
    context.knobs.boolean(label: 'Active', initialValue: true),
    context.knobs.string(label: 'Label', initialValue: 'Label'),
  );
}
