import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          borderData: FlBorderData(
            border: Border.all(color: Colors.black26),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
  sideTitles: SideTitles(
    showTitles: true,
    interval: 1, // Khoảng cách giữa các giá trị
    reservedSize: 40,
    getTitlesWidget: (value, meta) {
      return Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Text(
          value.toString(),
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      );
    },
  ),
),

            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  return Text(
                    'X${value.toInt()}',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  );
                },
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: Colors.blue,
              barWidth: 4,
              dotData: FlDotData(show: false), // Ẩn các điểm
              belowBarData: BarAreaData(show: false), // Ẩn vùng dưới đường
              spots: [
                FlSpot(0, 3),
                FlSpot(1, 1),
                FlSpot(2, 4),
                FlSpot(3, 2),
                FlSpot(4, 5),
              ],
            ),
          ],
          gridData: FlGridData(
            show: true, // Hiển thị lưới
            drawVerticalLine: true,
            horizontalInterval: 1,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) {
              return FlLine(color: Colors.grey, strokeWidth: 0.5);
            },
            getDrawingVerticalLine: (value) {
              return FlLine(color: Colors.grey, strokeWidth: 0.5);
            },
          ),
        ),
      ),
    );
  }
}
