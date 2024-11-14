import 'package:flutter/material.dart';
import 'city_weather_screen.dart'; // Asegúrate de que esta ruta esté correcta

class HomeScreen extends StatelessWidget {
  final List<String> cities = [
    'Ciudad de México',
    'Guadalajara',
    'Monterrey',
    'Cancún',
    'Puebla',
    'Mérida',
    'Tijuana',
    'León',
    'San Luis Potosí',
    'Querétaro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ciudades de México"),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cities[index]),
            onTap: () {
              // Navegar a la pantalla de clima pasando el nombre de la ciudad
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CityWeatherScreen(cityName: cities[index]), // Pasa el cityName
                ),
              );
            },
          );
        },
      ),
    );
  }
}
