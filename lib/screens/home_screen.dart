import 'package:flutter/material.dart';
import 'city_weather_screen.dart'; // Asegúrate de importar el archivo correcto

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aquí simulas un dato de clima para enviar a la siguiente pantalla
    final someWeatherData = {
      'city': 'Ciudad de México',
      'temperature': 25,
      'condition': 'Soleado',
    };

    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegas hacia CityWeatherScreen y le pasas los datos de clima
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CityWeatherScreen(weatherData: someWeatherData),
              ),
            );
          },
          child: Text('Ver Clima'),
        ),
      ),
    );
  }
}
