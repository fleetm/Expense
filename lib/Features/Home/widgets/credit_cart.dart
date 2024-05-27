import 'package:expenses/core/cons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenWidth / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: AppColors.myGradient,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey.shade400,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Total Balance',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Gap(20),
          const Text(
            '4800.00\$',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildIndicator(
                  icon: CupertinoIcons.arrow_down,
                  color: Colors.green,
                ),
                const Gap(15),
                const _IncomeExpenseColumn(
                  title: 'Income',
                  amount: '2,500,000',
                ),
                Spacer(),
                _buildIndicator(
                  icon: CupertinoIcons.arrow_up,
                  color: Colors.red,
                ),
                const Gap(15),
                const _IncomeExpenseColumn(
                  title: 'Expenses',
                  amount: '800.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator({required IconData icon, required Color color}) {
    return Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Colors.white30,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 12,
          color: color,
        ),
      ),
    );
  }
}

class _IncomeExpenseColumn extends StatelessWidget {
  final String title;
  final String amount;

  const _IncomeExpenseColumn({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
