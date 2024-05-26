import 'package:expenses/Features/Home/home_view.dart';
import 'package:expenses/core/cons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeView(),
    theme: ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.kPrime,
        secondary: AppColors.ksecoundry,
        background: AppColors.kthird,
      ),
      backgroundColor: Colors.grey.shade100,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
      ),
    ),
  ));
}
