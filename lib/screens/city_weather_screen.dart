import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CityWeatherScreen extends StatelessWidget {
  final String cityName;  // Agregar este campo

  // Constructor que recibe el nombre de la ciudad
  CityWeatherScreen({required this.cityName});

  final List<Map<String, dynamic>> weatherData = [
    {'date': 'Domingo', 'temperature': 22, 'humidity': 60, 'wind': 10, 'precipitation': 5},
    {'date': 'Lunes', 'temperature': 24, 'humidity': 65, 'wind': 12, 'precipitation': 10},
    {'date': 'Martes', 'temperature': 23, 'humidity': 70, 'wind': 8, 'precipitation': 15},
    {'date': 'Miércoles', 'temperature': 21, 'humidity': 75, 'wind': 14, 'precipitation': 20},
    {'date': 'Jueves', 'temperature': 19, 'humidity': 80, 'wind': 11, 'precipitation': 18},
    {'date': 'Viernes', 'temperature': 20, 'humidity': 72, 'wind': 9, 'precipitation': 7},
    {'date': 'Sábado', 'temperature': 25, 'humidity': 68, 'wind': 13, 'precipitation': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima de $cityName'), // Mostrar el nombre de la ciudad en el AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            barGroups: weatherData.asMap().entries.map((entry) {
              int index = entry.key;
              var data = entry.value;
              return BarChartGroupData(
                x: index,
                barRods: [
                  BarChartRodData(
                    toY: data['temperature'].toDouble(),
                    color: Colors.blue,
                    width: 20,
                  ),
                  BarChartRodData(
                    toY: data['humidity'].toDouble(),
                    color: Colors.green,
                    width: 20,
                  ),
                  BarChartRodData(
                    toY: data['wind'].toDouble(),
                    color: Colors.yellow,
                    width: 20,
                  ),
                  BarChartRodData(
                    toY: data['precipitation'].toDouble(),
                    color: Colors.orange,
                    width: 20,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
