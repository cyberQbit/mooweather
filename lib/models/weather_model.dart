// lib/models/weather_model.dart

class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;
  final double humidity;
  final double windSpeed;
  final double pressure; // Basınç (hPa)
  final double feelsLike; // Hissedilen sıcaklık

  // Anlık API'de veri olmasa da, UI/Model bütünlüğünü korumak için tutuyoruz.
  final List<HourlyForecast> hourlyForecasts;
  final List<DailyForecast> dailyForecasts;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
    required this.feelsLike,
    required this.hourlyForecasts,
    required this.dailyForecasts,
  });

  // One Call API JSON Formatına uygun Factory metodu
  factory Weather.fromJson(Map<String, dynamic> json) {
    // Anlık Durum
    final current = json['current'];
    final temp = (current['temp'] as num).toDouble();
    final condition = current['weather'][0]['main'];
    final humidity = (current['humidity'] as num).toDouble();
    final windSpeed = (current['wind_speed'] as num).toDouble();
    final pressure = (current['pressure'] as num).toDouble();
    final feelsLike = (current['feels_like'] as num).toDouble();

    // Saatlik Tahminler (opsiyonel, boş liste varsayılanı)
    final List<HourlyForecast> hourly = [];
    if (json.containsKey('hourly') && json['hourly'] is List) {
      hourly.addAll((json['hourly'] as List)
          .map((e) => HourlyForecast.fromJson(e as Map<String, dynamic>))
          .toList());
    }

    // Günlük Tahminler (opsiyonel, boş liste varsayılanı)
    final List<DailyForecast> daily = [];
    if (json.containsKey('daily') && json['daily'] is List) {
      daily.addAll((json['daily'] as List)
          .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
          .toList());
    }

    return Weather(
      cityName: json['fetched_city_name'] ??
          'Bilinmeyen Şehir', // Servisten eklediğimiz adı kullanıyoruz
      temperature: temp,
      mainCondition: condition,
      humidity: humidity,
      windSpeed: windSpeed,
      pressure: pressure,
      feelsLike: feelsLike,
      hourlyForecasts: hourly,
      dailyForecasts: daily,
    );
  }
}

// Boş olsa bile, UI'da hata vermemesi için bu sınıfları tutuyoruz.
class HourlyForecast {
  final int timeStamp;
  final double temperature;
  final String condition;

  HourlyForecast({
    required this.timeStamp,
    required this.temperature,
    required this.condition,
  });

  factory HourlyForecast.fromJson(Map<String, dynamic> json) {
    return HourlyForecast(
      timeStamp: json['dt'] as int,
      temperature: (json['temp'] as num).toDouble(),
      condition: json['weather'][0]['main'] as String,
    );
  }
}

class DailyForecast {
  final int timeStamp;
  final double tempMax;
  final double tempMin;
  final String condition;

  DailyForecast({
    required this.timeStamp,
    required this.tempMax,
    required this.tempMin,
    required this.condition,
  });

  factory DailyForecast.fromJson(Map<String, dynamic> json) {
    return DailyForecast(
      timeStamp: json['dt'] as int,
      tempMax: (json['temp']['max'] as num).toDouble(),
      tempMin: (json['temp']['min'] as num).toDouble(),
      condition: json['weather'][0]['main'] as String,
    );
  }
}
