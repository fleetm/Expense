import 'package:expenses/Features/Home/widgets/customnav_bar.dart';
import 'package:expenses/Features/expense/widgets/expense_view_body.dart';
import 'package:expenses/core/cons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseView extends StatelessWidget {
  const ExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ExpensViewBody(),
      bottomNavigationBar: const Customnavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: RawMaterialButton(
        onPressed: () {},
        shape: CircleBorder(),
        elevation: 2.0,
        fillColor: Colors.transparent,
        child: Ink(
          decoration: const BoxDecoration(
            gradient: AppColors.myGradient,
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              CupertinoIcons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
