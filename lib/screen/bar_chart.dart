import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 5, color: Colors.blue)]),
            BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 8, color: Colors.green)]),
            BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 3, color: Colors.red)]),
            BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 7, color: Colors.yellow)]),
          ],
        ),
      ),
    );
  }
}
