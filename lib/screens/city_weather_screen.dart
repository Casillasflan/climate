import 'package:flutter/material.dart';

class CityWeatherScreen extends StatelessWidget {
  final Map<String, dynamic> weatherData; // Definimos el tipo como Map

  // Constructor que recibe el parámetro weatherData
  CityWeatherScreen({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clima en ${weatherData['city']}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Temperatura: ${weatherData['temperature']}°C',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Condición: ${weatherData['condition']}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
