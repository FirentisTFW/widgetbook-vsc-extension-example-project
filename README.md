# Widgetbook VSC Extension Example Project

## Purpose

The purpose of this project is to present example usage of [Widgetbook Entries Generator](https://github.com/leancodepl/widgetbook-entries-generator) - a VSC extension that allows you to easily generate your Widgetbook use-cases.

The project does not contain any real-world logic, it only presents an example project setup and a way in which you can integrate the extension into it.

## Project Overview

The project follows a multi-repo approach. The structure looks as the following:

- **apps** (a directory containig all applications in the project)
  - **my_app** (the main application, here it's just a counter app)
  - **my_widgetbook** (the Widgetbook application, all use-cases for the widgets will be generated here)
- **packages** (a directory containing all project packages in multi-repo approach)
  - **my_common_ui** (a package with the Design System of the app, it contains all common widgets. Here, just a couple of dummy widgets with different constructors for the demonstration)
  - *possibly other packages*

At the root of the project there's `.vscode` directory. It contains `settings.json` file where you can see the example extension configuration for this project:

```json
{
    "widgetbook-generator.widgetsDirectoryPath": "apps/my_widgetbook/lib/widgets",
    "widgetbook-generator.barrelFileImport": "package:my_common_ui/my_common_ui.dart",
    "widgetbook-generator.rootDirectoryName": "my_project",
    "widgetbook-generator.widgetbookVersion": "3.2.0",
    "widgetbook-generator.approach": "Manual",
    "widgetbook-generator.customKnobsPath": "custom_knobs.json",
}
```

## How to Try It Out

1. Clone the repository.
2. Go into `packages/my_common_ui/lib/src/widgets`.
3. Perform any action described in `Usage` section in [the extension's README](https://github.com/leancodepl/widgetbook-entries-generator). If you choose to generate use-cases for one just one widget, you need to open a file containing that widget first.