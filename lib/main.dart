import 'package:expenses/Features/Home/home_view.dart';
import 'package:expenses/core/cons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeView(),
    theme: ThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.kPrime,
        secondary: AppColors.ksecoundry,
        tertiary: AppColors.kthird,
        background: Colors.grey.shade100,
        outline: Colors.grey,
      ),
      backgroundColor: Colors.grey.shade100,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
      ),
    ),
  ));
}
