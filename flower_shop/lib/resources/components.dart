// ignore_for_file: constant_identifier_names

import 'package:flower_shop/screens/home_screen/models/flower_model.dart';
import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );
int currentIndex = 0;
int countCart = 0;
String? token = '';
String? lan = 'ar';
String nameUser = '';
List<FlowerModel> fav = [];
List<FlowerModel> cartsList = [];
