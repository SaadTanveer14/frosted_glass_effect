library frosted_glass_effect;
import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget widget;
  final double radius;
  final String backgroundImage;
  final Color backgroundColor;
  const GlassContainer(
      {super.key,
      required this.widget,
      double? radius,
      double? height,
      double? width,
      String? backgroundImage,
      Color? backgroundColor})
      : radius = radius ?? 0,
        backgroundImage = backgroundImage ?? "",
        backgroundColor = backgroundColor ?? Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Stack(
            children: [
              backgroundImage != ""
                  ? SizedBox(
                      child: Image.asset(
                        backgroundImage,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(),

              Container(
                color: backgroundColor,
              ),
              //Blur Effect
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(),
              ),
              //Gradient Effect
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(color: Colors.white.withOpacity(0.30)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.15),
                        Colors.white.withOpacity(0.1),
                      ]),
                ),
              ),
              // Your Widget
              widget
            ],
          ),
        ),
      ),
    );
  }
}
