import 'package:expenses/core/cons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartStats extends StatefulWidget {
  const ChartStats({super.key});

  @override
  State<ChartStats> createState() => _ChartStatsState();
}

class _ChartStatsState extends State<ChartStats> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      mainBarChart(),
    );
  }

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
          toY: y,
          gradient: AppColors.myGradient,
          width: 10,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 5,
            color: Colors.grey.shade300,
          ))
    ]);
  }

  List<BarChartGroupData> showingGroups() {
    return List.generate(8, (i) {
      switch (i) {
        case 0:
          return makeGroupData(0, 2);
        case 1:
          return makeGroupData(1, 3);
        case 2:
          return makeGroupData(2, 4);
        case 3:
          return makeGroupData(3, 4.2);
        case 4:
          return makeGroupData(4, 3.8);
        case 5:
          return makeGroupData(2, 3.3);
        case 6:
          return makeGroupData(2, 2.8);
        case 7:
          return makeGroupData(4, 2.5);
        default:
          return throw Error;
      }
    });
  }

  BarChartData mainBarChart() {
    return BarChartData(
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 38,
            getTitlesWidget: getTiles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            getTitlesWidget: leftTitles,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  Widget getTiles(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
    Widget text;

    switch (value.toInt()) {
      case 0:
        text = const Text('0', style: style);
        break;
      case 1:
        text = const Text('1', style: style);
        break;
      case 2:
        text = const Text('2', style: style);
        break;
      case 3:
        text = const Text('3', style: style);
        break;
      case 4:
        text = const Text('4', style: style);
        break;
      case 5:
        text = const Text('5', style: style);
        break;
      case 6:
        text = const Text('6', style: style);
        break;
      case 7:
        text = const Text('7', style: style);
        break;
      case 8:
        text = const Text('8', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
    String text;
    if (value == 0) {
      text = '1k';
    } else if (value == 1) {
      text = '2k';
    } else if (value == 2) {
      text = '3k';
    } else if (value == 3) {
      text = '4k';
    } else if (value == 4) {
      text = '5k';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
