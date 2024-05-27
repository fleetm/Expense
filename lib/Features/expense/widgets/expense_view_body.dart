import 'package:expenses/Features/expense/widgets/chartstats.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExpensViewBody extends StatelessWidget {
  const ExpensViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(20),
            Chart(),
          ],
        ),
      ),
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: ChartStats());
  }
}
