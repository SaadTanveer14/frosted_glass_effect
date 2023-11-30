<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package gives a frosted glassy effect to the widgets, images and simple containers.
## Features

- Simple Frosted Glass Effect.
- Frosted Glass Effect with Image Background.
- Any child widget can be used, similar to Container (Use it with no Background Color).
- Effect with Background Color.
<p align="center">
        <img src= "https://github.com/SaadTanveer14/frosted_glass_effect/assets/99664282/d1a19894-6057-4c12-83df-e3aa0e860d7c" alt="drawing" width="230px" hspace="30"/>
        <img src= "https://github.com/SaadTanveer14/frosted_glass_effect/assets/99664282/cb13f29a-14b8-4d1b-8b09-998a3a0e9ee8" alt="drawing" width="230px" hspace="30"/>
        <img src= "https://github.com/SaadTanveer14/frosted_glass_effect/assets/99664282/d3315b5d-426c-4345-bbbe-f3a84a73c0e9" alt="drawing" width="230px" hspace="30"/>
</p>
## Getting started

Add the dependency under the dependencies:

```yaml
    dependencies:
        frosted_glass_effect: ^0.0.1
```

## Usage

Import the package using the code below.

```dart
import 'package:frosted_glass_effect/frosted_glass_effect.dart';
```
The Class has the following attributes

```dart
GlassContainer({
  Widget widget,
  double? radius,
  double? height,
  double? width,
  String? backgroundImage,
  Color? backgroundColor,
})
```

#### Remember
- Any Custom widget can be passed to this Glass Container. The widget will appear on top of the backgound image or color.
- Keep the widget transparent if you are using the background color or image.
- The width is automatically expanded restrict the width according to your need.

#### Example Widgets

```dart 
GlassContainer(
    radius: 20,
// backgroundImage:  "assets/bg.jpg",
    backgroundColor: Colors.red, 
    widget: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            `child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text("\$16/mo", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Spacer(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Spacer(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Text("PRO", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal),),
                        Text("On Sale Now!", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ],
                    )
                ],)
            ],),`
        ),
    ),
),
```
Use <b>background image</b> from the assets.


## Additional information


You can play with the blurness of the widget by adjusting the SigmaX and SigmaY in the source code of this package.

```dart
BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      ....
),
```

Contribute to the package on https://github.com/SaadTanveer14/frosted_glass_effect
You can open issues and pull requests for contributions.
