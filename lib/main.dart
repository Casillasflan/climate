import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://xbyfmqljvmmxltihanbf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZIsInJlZiI6InhieWZtcWxqdm1teGx0aWhhbmJmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1OTk4NDIsImV4cCI6MjA0NzE3NTg0Mn0.6gwyjhvq8BK4MsGemfG3M8hTavt1UT25EtWPBjB9GtM',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClimateView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
