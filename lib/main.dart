import 'package:expenses/core/app_router.dart';
import 'package:expenses/core/cons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: AppRouter.router,
    debugShowCheckedModeBanner: false,
    // home: const HomeView(),
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
