import 'dart:async';
import 'package:flutter/material.dart';

class AnimateBankProvider extends ChangeNotifier {
  static late AnimationController controller;

  static final Animation<double> animation = Tween<double>(
    begin: 65,
    end: 70,
  ).animate(controller);

  static final Animation<double> shadowAnimation = Tween<double>(
    begin: 0,
    end: 30,
  ).animate(controller);

  static animateButton() {
    controller.forward();
    Timer(const Duration(milliseconds: 370), () => controller.reverse());
  }

  static disposeAnimation() {
    controller.dispose();
  }
}
