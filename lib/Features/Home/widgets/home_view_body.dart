import 'package:expenses/Features/Home/widgets/Custom_app_bar.dart';
import 'package:expenses/Features/Home/widgets/credit_cart.dart';
import 'package:expenses/Features/Home/widgets/homeMenu.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(),
            Gap(20),
            CreditCard(),
            Gap(40),
            Expanded(
              child: HomeMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
