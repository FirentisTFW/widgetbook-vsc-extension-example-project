import 'package:flutter/material.dart';

enum LoaderType {
  active,
  inactive;
}

enum MyImage {
  first,
  second,
}

enum MyIcon {
  first,
  second,
}

class Loader extends StatelessWidget {
  const Loader(
    this.type, {
    super.key,
    this.semanticsLabel,
  })  : text = null,
        icon = null,
        image = null;

  const Loader.text({
    super.key,
    this.type = LoaderType.active,
    this.semanticsLabel,
    required this.text,
  })  : icon = null,
        image = null;

  // const skipped.
  Loader.icon(
    this.type, {
    super.key,
    this.semanticsLabel,
    required this.icon,
  })  : text = null,
        image = null;

  const Loader.image({
    this.type = LoaderType.active,
    this.semanticsLabel,
    required this.image,
  })  : icon = null,
        text = null;

  factory Loader.randomText({
    required bool active,
    required String label,
  }) {
    return Loader.text(
      text: "Random Text",
    );
  }
  factory Loader.randomTextPositional(
    bool active,
    String label,
  ) {
    return Loader.text(
      text: "Random Text",
    );
  }

  final String? text;
  final MyIcon? icon;
  final MyImage? image;

  final LoaderType type;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
