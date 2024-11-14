# EV2 - Mobile Applications 2

**Student Name:** Luis Alberto Casillas Muñoz  
**Course:** Mobile Applications 2  
**Instructor Name:** Carlos Alberto Iriarte Martínez  

---

## Table of Contents

1. [Introduction](#introduction)
2. [Application Objective](#application-objective)
3. [System Requirements](#system-requirements)
4. [Application Description](#application-description)
5. [Source Code](#source-code)
6. [Evidence Screenshots](#evidence-screenshots)
7. [Results and Conclusions](#results-and-conclusions)

---

## Introduction

This report, **EV2**, documents the development of a mobile application in **Flutter**. The purpose of this project is to build a functional and user-friendly application, showcasing skills in mobile application development. Through this practice, I gained insights into Flutter's capabilities and its application to real-world projects.

---

## Application Objective

**General Objective:**  
To develop an application that fulfills the specified requirements, emphasizing usability, functionality, and efficient code structure.

---

## System Requirements

### Technical Requirements
- **Flutter Version:** 3.24.3
- **SDK:** 34.0.0
- **Dependencies:** 
  - flutter/material.dart
  - cupertino_icons: ^1.0.2
  - (list other dependencies here as needed)
- **Tools Used:** Visual Studio Code, Android Studio

### Functional Requirements
- **Main Features:** User authentication, weather data display, daily and weekly forecasts
- **Functionalities:** Allows users to view weather data for selected cities, displays temperature, humidity, wind, and precipitation data in a user-friendly interface

---

## Application Description

This application provides users with real-time weather information for major cities in Mexico. Users can select a city from a list and view detailed weather statistics, including temperature, humidity, wind speed, and precipitation, presented through charts and visual elements.

---

## Source Code

### Project Structure
- **lib/**: Contains main application files
  - **screens/**: Screen components (e.g., main screen, details screen)
  - **models/**: Data models for weather data
  - **services/**: Service files for API integration

### Full Code
Include the complete code for the main screens, such as:

#### Main Screen
```dart
// main_screen.dart
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Text('Select a city to view weather data.'),
      ),
    );
  }
}
