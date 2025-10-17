// lib/providers/weather_provider.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../models/weather_model.dart';
import '../models/weather_exceptions.dart';
import '../services/weather_service.dart';

// Servis Sağlayıcı
final weatherServiceProvider =
    Provider<WeatherService>((ref) => WeatherService());

// Notifier Sınıfı
class WeatherNotifier extends AutoDisposeAsyncNotifier<Weather?> {
  String currentCity = "İstanbul";

  @override
  Future<Weather?> build() {
    return fetchWeatherByCurrentLocation();
  }

  Future<Weather?> fetchWeatherByCurrentLocation() async {
    state = const AsyncValue.loading();
    try {
      final weatherService = ref.read(weatherServiceProvider);
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.deniedForever) {
        return fetchWeatherByCity(currentCity);
      }
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      final weather = await weatherService.getWeatherByCoordinates(
          position.latitude, position.longitude);
      state = AsyncValue.data(weather);
      currentCity = weather.cityName;
      return weather;
    } catch (e, stack) {
      print("Konum tabanlı hava durumu hatası: ${e.toString()}");

      // Kullanıcı dostu hata mesajı
      String errorMessage = 'Konum alınamadı, varsayılan şehir deneniyor...';
      if (e is WeatherException) {
        errorMessage = e.userFriendlyMessage;
      }

      state = AsyncValue.error(errorMessage, stack);
      return fetchWeatherByCity(currentCity);
    }
  }

  Future<Weather?> fetchWeatherByCity(String cityName) async {
    state = const AsyncValue.loading();
    try {
      final weatherService = ref.read(weatherServiceProvider);
      final weather = await weatherService.getWeather(cityName);
      state = AsyncValue.data(weather);
      currentCity = cityName;
      return weather;
    } catch (e, stack) {
      print("Şehir adına göre çekme hatası: ${e.toString()}");

      // Kullanıcı dostu hata mesajı
      String errorMessage = 'Veri çekilemedi. Lütfen tekrar deneyin.';
      if (e is WeatherException) {
        errorMessage = e.userFriendlyMessage;
      }

      state = AsyncValue.error(errorMessage, stack);
      return null;
    }
  }
}

// Global Provider Tanımı
final weatherProvider =
    AsyncNotifierProvider.autoDispose<WeatherNotifier, Weather?>(
  () => WeatherNotifier(),
);

final currentCityProvider = Provider<String>((ref) {
  final weatherState = ref.watch(weatherProvider);
  return weatherState.when(
    data: (weather) =>
        weather?.cityName ?? ref.read(weatherProvider.notifier).currentCity,
    error: (_, __) => ref.read(weatherProvider.notifier).currentCity,
    loading: () => ref.read(weatherProvider.notifier).currentCity,
  );
});
