import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeatherChart extends StatelessWidget {
  final List<FlSpot> spots;

  WeatherChart({required this.spots});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            barWidth: 4,
            belowBarData: BarAreaData(show: false),
            dotData: FlDotData(show: false),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent], // Colores para el degradado
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
