import 'package:expenses/Features/Home/widgets/customnav_bar.dart';
import 'package:expenses/Features/Home/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
      //appBar: AppBar(),
      bottomNavigationBar: Customnavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
