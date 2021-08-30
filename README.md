# Awesome Flutter Extensions

<img src="assets/images/header.svg">

Awesome flutter extensions to remove boilerplate

## Installation

1. Install using the Terminal:

```sh
flutter pub add awesome_flutter_extensions
```

2. Install adding the dependency in the `pubspec.yaml`:

```yaml
dependencies:
  awesome_flutter_extensions: ^0.0.1 # Use the latest version from pub.dev
```

3. Install using __Pubspec Assist__ (VSCode extensions):

Open the command palette:
- (⇧ ⌘ P) on Mac
- (Ctrl ⇧ P) on Windows

Then type `Pubspec assist..` until you'll get `Pubspec Assist: Add/Update dependencies`.

Here type the name of the package: `awesome_flutter_extensions` and press ENTER ↵.

## Get Started

First of all, let's import the extensions with:

```dart
import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
```
or
```dart
import 'package:awesome_flutter_extensions/src/all.dart';
```

To learn the differences between them, continue reading.

## Usage

There are many extensions in this library.
So I decided to break them up into groups.
The groups currently available are:

- [navigator](#navigator)
- [sizes](#sizes)
- [textStyles](#textStyles)
- [colors](#colors)
- [themes](#themes)
- [mediaQuery](#mediaQuery)

Why this split?
After creating extensions upon extensions, I admit that with context you could access an infinite number of things.
That's why I decided to split them up.

Hey, but a library to avoid boilerplate and I have to write so much code?
If you prefer to have all extensions available directly with the context, import this instead:
```dart
import 'package:awesome_flutter_extensions/src/all.dart';
```


### Navigator

To push a page you can use:
```dart
// before
Navigator.of(context).push(SomePage());
// after
context.navigator.push(SomePage());
// with the `all.dart` import
context.push(SomePage());
```

All the extensions available are:
- canPop
- maybePop
- pop
- popUntil
- push
- popAndPushNamed
- pushAndRemoveUntil
- pushNamed
- pushNamedAndRemoveUntil
- pushReplacement
- pushReplacementNamed
- removeRoute
- removeRouteBelow
- replace
- replaceRouteBelow

### Sizes

To get the `width` of the screen, use:
```dart
// before
MediaQuery.of(context).size.width
// after
context.sizes.width;
// with the `all.dart` import
context.width
```

All the extensions available are:
- width
- height
- padding
- viewInsets
- systemGestureInsets
- viewPadding
- devicePixelRatio
- textScaleFactor

### TextStyles

To get the `headline1` text style use:
```dart
// before
Theme.of(this).textTheme.headline1!
// after
context.textStyles.h1
// with the `all.dart` import
context.h1
```

All the extensions available are:
- h1
- h2
- h3
- h4
- h5
- h6
- bodyText1
- bodyText2
- caption
- button
- overline
- subtitle1
- subtitle2

You can also change the font __weight__ directly using:
```dart
// normally
context.textStyles.h1.semiBold
// with the `all.dart` import
context.h1.semiBold
```

All the font weights available are:
- thick
- extraBold
- bold
- semiBold
- medium
- regular
- light
- extraLight
- thin

You can also change the font __style__ directly using:
```dart
// normally
context.textStyles.h1.italic
// with the `all.dart` import
context.h1.italic
```

All the font weights available are:
- normal
- italic

### Colors

To get the `primaryColor` from the theme use:
```dart
// before
Theme.of(context).primaryColor
// after
context.colors.primary
// with the `all.dart` import
context.primaryColor
```

You can also get the `colorScheme` colors using:
```dart
// before
Theme.of(context).colorScheme
// after
context.colors.scheme
// with the `all.dart` import
context.colorScheme
```

All the extensions available are:
- primary
- primaryLight
- primaryDark
- accent
- canvas
- shadow
- scaffoldBackground
- bottomAppBar
- card
- divider
- focus
- hover
- highlight
- splash
- selectedRow
- unselectedWidget
- disabled
- button
- secondaryHeader
- background
- dialogBackground
- indicator
- hint
- error
- toggleableActive
- scheme

In the `all.dart` file the names have the `Color` word after them, except for _scheme_ which becomes _colorScheme_.

### Themes

To get the `appBarTheme`, use:
```dart
// before
Theme.of(context).appBarTheme
// after
context.themes.appBar;
// with the `all.dart` import
context.appBarTheme
```

All the extensions available are:
- button
- toggleButtons
- text
- primaryText
- accentText
- inputDecoration
- icon
- primaryIcon
- accentIcon
- slider
- tabBar
- tooltip
- card
- chip
- appBar
- scrollbar
- bottomAppBar
- dialog
- floatingActionButton
- navigationRail
- snackBar
- bottomSheet
- popupMenu
- banner
- divider
- buttonBar
- bottomNavigationBar
- timePicker
- textButton
- elevatedButton
- outlinedButton
- textSelection
- dataTable
- checkbox
- radio
- switchTheme
- cupertinoOverride

In the `all.dart` file the names have the `Theme` word after them, expect for _switchTheme_ that is equal.

## Contributing

Contributions are welcomed!

Here is a curated list of how you can help:

- Report bugs
- Report parts of the documentation that are unclear
- Update the documentation / add examples
- Implement new features by making a pull-request

--- 

If you enjoyed the library, like it.

- [My Twitter Profile](https://twitter.com/nank1ro)
- [My website](https://bestofcode.dev/)
