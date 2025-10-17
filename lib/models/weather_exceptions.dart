// lib/models/weather_exceptions.dart

/// Base exception sınıfı tüm hava durumu hataları için
class WeatherException implements Exception {
  final String technicalMessage;
  final String userFriendlyMessage;

  WeatherException(this.technicalMessage, this.userFriendlyMessage);

  @override
  String toString() => technicalMessage;
}

/// İnternet bağlantısı yok
class NoInternetException extends WeatherException {
  NoInternetException()
      : super('No internet connection available',
            'İnternet bağlantınızı kontrol edin ve tekrar deneyin');
}

/// API anahtarı geçersiz veya yetkilendirme hatası
class InvalidApiKeyException extends WeatherException {
  InvalidApiKeyException()
      : super('Invalid API key or authorization failed',
            'API anahtarı geçersiz. Lütfen geliştiriciye bildirin.');
}

/// API limit aşımı
class ApiLimitExceededException extends WeatherException {
  ApiLimitExceededException()
      : super('API rate limit exceeded',
            'API limit aşımı. Lütfen birkaç dakika sonra tekrar deneyin.');
}

/// Şehir bulunamadı
class CityNotFoundException extends WeatherException {
  final String cityName;

  CityNotFoundException(this.cityName)
      : super('City not found: $cityName',
            'Şehir bulunamadı. Farklı bir isim deneyin veya Türkçe karakter kullanın.');
}

/// Zaman aşımı hatası
class TimeoutException extends WeatherException {
  TimeoutException()
      : super('Request timeout',
            'Bağlantı zaman aşımına uğradı. İnternet bağlantınızı kontrol edin.');
}

/// Sunucu hatası
class ServerException extends WeatherException {
  final int statusCode;

  ServerException(this.statusCode)
      : super('Server error: $statusCode',
            'Sunucu hatası oluştu. Lütfen daha sonra tekrar deneyin.');
}

/// Veri parse hatası
class ParseException extends WeatherException {
  ParseException()
      : super('Failed to parse weather data',
            'Hava durumu verileri okunamadı. Lütfen uygulamayı yeniden başlatın.');
}
