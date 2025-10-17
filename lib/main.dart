import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/weather_screen.dart';

Future<void> main() async {
  // dotenv'i yükle
  await dotenv.load(fileName: ".env");

  // Uygulamayı ProviderScope ile sarıyoruz
  runApp(const ProviderScope(child: MooWeatherApp()));
}

class MooWeatherApp extends StatelessWidget {
  const MooWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MooWeather',
      theme: ThemeData(
        // Modern Arayüz İçin İlk Tema Ayarları
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90E2),
        ), // Soğuk Mavi Ton
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(
          0xFFF0F4F8,
        ), // Açık Gri/Beyaz arka plan
      ),
      home: const WeatherScreen(), // Artık ana ekranımız WeatherScreen
    );
  }
}
