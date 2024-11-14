import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(value: 40, color: Colors.blue, title: '40%'),
            PieChartSectionData(value: 30, color: Colors.green, title: '30%'),
            PieChartSectionData(value: 20, color: Colors.orange, title: '20%'),
            PieChartSectionData(value: 10, color: Colors.red, title: '10%'),
          ],
        ),
      ),
    );
  }
}
