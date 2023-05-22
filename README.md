# Awesome Flutter Extensions

<img src="https://raw.githubusercontent.com/nank1ro/awesome_flutter_extensions/main/assets/images/header.svg" height="400">

Awesome flutter extensions to remove boilerplate

## Installation

1. Install using the Terminal:

```sh
flutter pub add awesome_flutter_extensions
```

2. Install adding the dependency in the `pubspec.yaml`:

```yaml
dependencies:
  awesome_flutter_extensions: ^1.0.0 # Use the latest version from pub.dev
```

3. Install using **Pubspec Assist** (VSCode extensions):

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

## Usage

There are many extensions in this library.
So I decided to break them up into groups.
The groups currently available are:

- [sizes](#sizes)
- [textStyles](#textStyles)
- [colors](#colors)
- [themes](#themes)
- [platform](#platform)
- [string](#string)
- [navigator](#navigator)
- [miscellaneous](#miscellaneous)

Why this split?
After creating extensions upon extensions, I admit that with context you could access an infinite number of things.
That's why I decided to split them up.

### Sizes

To get the `width` of the screen, use:

```dart
// before
MediaQuery.sizeOf(context).width
// after
context.sizes.width;
```

All the extensions available are:

- width
- maybeWidth
- height
- maybeHeight
- padding
- maybePadding
- viewInsets
- maybeViewInsets
- systemGestureInsets
- maybeSystemGestureInsets
- viewPadding
- maybeViewPadding
- devicePixelRatio
- maybeDevicePixelRatio
- textScaleFactor
- maybeTextScaleFactor

You can also add padding easily

```dart
// before
Padding(padding: EdgeInsets.symmetric(horizontal: 16))
),
// now
Padding(padding: 16.horizontal())
```

All the edge insets available are:

- all
- horizontal
- vertical
- top
- left
- right
- bottom

### TextStyles

To get the `titleLarge` text style use:

```dart
// before
Theme.of(context).textTheme.titleLarge!
// after
context.textStyles.titleLarge
```

All the extensions available are:

- displayLarge
- displayMedium
- displaySmall
- headlineLarge
- headlineMedium
- headlineSmall
- titleLarge
- titleMedium
- titleSmall
- bodyLarge
- bodyMedium
- bodySmall
- labelLarge
- labelMedium
- labelSmall

You can also change the font **weight** directly using:

```dart
context.textStyles.titleLarge.semiBold
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

You can also change the font **style** directly using:

```dart
context.textStyles.titleLarge.italic
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
```

You can also get the `colorScheme` colors using:

```dart
// before
Theme.of(context).colorScheme
// after
context.colors.scheme
```

All the extensions available are:

- primary
- primaryLight
- primaryDark
- secondary
- canvas
- shadow
- scaffoldBackground
- card
- divider
- focus
- hover
- highlight
- splash
- unselectedWidget
- disabled
- secondaryHeader
- background
- dialogBackground
- indicator
- hint
- error
- scheme
- inversePrimary
- inverseSurface
- onBackground
- onError
- onInverseSurface
- onPrimary
- onSecondary
- onSurface
- onSurfaceVariant
- onTertiary
- outline
- scrim
- outlineVariant
- surface
- surfaceTint
- surfaceVariant
- tertiary
- errorContainer
- onErrorContainer
- onPrimaryContainer
- onSecondaryContainer
- onTertiaryContainer
- primaryContainer
- secondaryContainer
- tertiaryContainer

### Themes

To get the `appBarTheme`, use:

```dart
// before
Theme.of(context).appBarTheme
// after
context.themes.appBar;
```

All the extensions available are:

- button
- toggleButtons
- text
- primaryText
- inputDecoration
- icon
- primaryIcon
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
- cupertinoOverride
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
- badge
- drawer
- dropdownMenu
- expansionTile
- extensions
- filledButton
- iconButton
- listTile
- menu
- menuBar
- menuButton
- navigationBar
- navigationDrawer
- pageTransitions
- progressIndicator
- segmentedButton

### Platform

To detect in which platform the app is running:

```dart
final isMacOS = context.platform.isMacOS
```

All the parameters available are:

- isAndroid
- isWeb
- isMacOS
- isWindows
- isFuchsia
- isIOS
- isLinux

To detect the target platform (e.g. the app is running on Web but from an iOS device):

```dart
final isIOS = context.targetPlatform.isIOS;
```

- isAndroid
- isFuchsia
- isIOS
- isLinux
- isMacOS
- isWindows

### String

Various extension on `String`, for example:

#### Capitalize each word

```dart
final s = 'hello world';
print(s.capitalize()); // Hello World
```

#### Capitalize first word

```dart
final s = 'hello world';
print(s.capitalizeFirst()); // Hello world
```

#### Mock word

Use it when you need to change the string later or you need to remember to translate it.

```dart
final s = 'hello world';
print(s.mock); // hello world 🧨
```

#### isNum

```dart
final s = '2.0';
print(s.isNum()); // true

final s2 = 'hi';
print(s2.isNum()); // false
```

All the extensions available are:

- capitalize
- capitalizeFirst
- mock
- isBool(caseSensitive = true)
- toBool(caseSensitive = true)
- isNum
- toNum
- isDouble
- toDouble
- inInt
- toInt
- removeAllWhitespace
- hasMatch

### Miscellaneous

Additional extensions.

#### Log object

```dart
// before
import 'dart:developer' as devtools show log;
devtools.log(MyClass.toString());
// now
MyClass.log();
```

#### Separated Column or Row

Do you want to separate your Column or Row with the same widget like `ListView.separated`?
Use `separatedBy`:

```dart
// before
Column(
    children: [
        FirstWidget(),
        SizedBox(height: 8),
        SecondWidget()
        SizedBox(height: 8),
        ThirdWidget(),
    ],
),
// now
Column(
    children: [
        FirstWidget(),
        SecondWidget()
        ThirdWidget(),
    ].separatedBy(SizedBox(height: 8)),
),
```

#### Convert number to Duration

```dart
// before
final twoDays = Duration(days: 2);
// now
final twoDays = 2.days;
```

All available extensions are:

- microseconds
- milliseconds
- seconds
- minutes
- hours
- days
- months
- quarters
- quadrimesters
- years

#### Future delayed

```dart
// before
await Future.delayed(Duration(seconds: 5));
// now
await 5.seconds.future();
```

### Navigator

To push a page you can use:

```dart
// before
Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) => const SecondPage(),
  ),
);
// after
context.navigator.push(
    MaterialPageRoute(
    builder: (context) => const SecondPage(),
  ),
);
// or even shorter
context.navigator.pushMaterial(const SecondPage()),
```

All the extensions available are:

- canPop
- maybePop
- pop
- popUntil
- push
- pushMaterial
- pushCupertino
- popAndPushNamed
- pushAndRemoveUntil
- pushNamed
- pushNamedAndRemoveUntil
- pushReplacement
- pushReplacementMaterial
- pushReplacementCupertino
- pushReplacementNamed
- removeRoute
- removeRouteBelow
- replace
- replaceRouteBelow

- ## Contributing

Contributions are welcomed!

Here is a curated list of how you can help:

- Report bugs
- Report parts of the documentation that are unclear
- Update the documentation / add examples
- Implement new features by making a pull-request

---

If you enjoyed the library, like it.

- [My Twitter Profile](https://twitter.com/nank1ro)
- [GitHub repo](https://github.com/nank1ro/awesome_flutter_extensions)
