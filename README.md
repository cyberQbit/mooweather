# 🌤️ MooWeather# 🌤️ MooWeather



**Modern, minimalist hava durumu uygulaması - AccuWeather tarzı tasarım**Modern ve kullanıcı dostu hava durumu uygulaması. Üniversite bilgisayar programlama dersi projesi.



<div align="center">## ✨ Özellikler



![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)### 🎨 Modern UI/UX

![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)- **AccuWeather/Google Weather** tarzı modern tasarım

![Platform](https://img.shields.io/badge/Platform-Android-green.svg)- **Glassmorphism** efektli kartlar (yarı saydam, bulanık arka plan)

![License](https://img.shields.io/badge/License-MIT-orange.svg)- **Gradient arka planlar** (hava durumuna göre dinamik renkler)

- **Pull-to-refresh** (aşağı çekerek yenileme)

</div>- **Shimmer loading** animasyonları



---### 🌍 Hava Durumu

- **Anlık hava durumu** (sıcaklık, nem, rüzgar, basınç, hissedilen)

## 📱 Hakkında- **Saatlik tahmin** (24 saat)

- **7 günlük tahmin**

MooWeather, modern Flutter framework'ü ile geliştirilmiş, AccuWeather ve Google Weather tarzında tasarlanmış bir hava durumu uygulamasıdır. Türkçe dil desteği, glassmorphism efektleri ve smooth animasyonlarla kullanıcı dostu bir deneyim sunar.- **Konum tabanlı** (GPS ile otomatik konum)

- **Şehir arama** (manuel şehir seçimi)

### 🎯 Proje Amacı- **Türkçe hava durumu** (80+ terim çevirisi)



Bu proje, üniversite yazılım dersi kapsamında modern mobil uygulama geliştirme tekniklerini öğrenmek ve uygulamak için geliştirilmiştir.### 🔧 Teknik Özellikler

- **Multi-API key rotation** (4 API anahtarı, otomatik failover)

---- **Rate limiting** (1.1 saniye interval)

- **Retry logic** (3x deneme, exponential backoff)

## ✨ Özellikler- **Timeout** (10 saniye)

- **Custom exceptions** (8 farklı hata türü)

### 🎨 Modern UI/UX- **Logger** (detaylı debug logları)

- ✅ **AccuWeather tarzı tasarım** - Profesyonel ve minimal- **Secure API keys** (.env dosyası)

- ✅ **Glassmorphism efektler** - Yarı saydam, bulanık kartlar

- ✅ **Dinamik gradient arka planlar** - Hava durumuna göre değişen renkler## 🛠️ Teknolojiler

- ✅ **Smooth animasyonlar** - Pull-to-refresh, shimmer loading

- ✅ **Responsive tasarım** - Klavye-uyumlu arayüz- **Flutter** 3.0+ (Cross-platform framework)

- **Riverpod** (State management)

### 🇹🇷 Türkçe Lokalizasyon- **OpenWeatherMap API** (Hava durumu verisi)

- ✅ **80+ hava durumu terimi** çevrildi- **Geolocator** (GPS konumu)

- ✅ Tam Türkçe arayüz- **Shimmer** (Loading animasyonları)

- ✅ Şehir arama Türkçe destekli- **Logger** (Debug logging)

- **flutter_dotenv** (Environment variables)

### 🔧 Teknik Özellikler

- ✅ **Multi-API key rotation** - 4 farklı API key ile kesintisiz hizmet## 📱 Platform

- ✅ **Retry logic** - 3x deneme, exponential backoff

- ✅ **Rate limiting** - API limit aşımını önler- ✅ **Android** (destekleniyor)

- ✅ **8 custom exception türü** - Detaylı hata yönetimi- ❌ iOS, Web, Linux, macOS (kaldırıldı - sadece Android)

- ✅ **Güvenli API key yönetimi** - .env ile korumalı

- ✅ **Logger entegrasyonu** - Debug mode loglama## 🚀 Kurulum



### 🌍 Hava Durumu Bilgileri### 1. Gereksinimler

- ✅ Güncel hava durumu- Flutter SDK 3.0+

- ✅ Sıcaklık, hissedilen sıcaklık- Android Studio / VS Code

- ✅ Nem, basınç, rüzgar hızı- Android cihaz veya emülatör

- ✅ Görüş mesafesi

- ✅ Saatlik tahminler### 2. Projeyi İndirin

- ✅ Günlük tahminler```bash

- ✅ GPS konum desteğigit clone https://github.com/[kullanici-adiniz]/mooweather.git

- ✅ Manuel şehir aramacd mooweather

```

---

### 3. API Anahtarını Ayarlayın

## 🚀 Kurulum`.env` dosyası oluşturun ve API anahtarlarınızı ekleyin:

```env

### GereksinimlerOPENWEATHER_API_KEY=your_api_key_1

OPENWEATHER_API_KEY_2=your_api_key_2

- Flutter SDK >= 3.0.0OPENWEATHER_API_KEY_3=your_api_key_3

- Dart SDK >= 3.0.0OPENWEATHER_API_KEY_4=your_api_key_4

- Android SDK (API level 21+)```

- OpenWeatherMap API key

**API Anahtarı Almak İçin:**

### Adımlar1. [OpenWeatherMap](https://openweathermap.org/api) sitesine gidin

2. Ücretsiz hesap oluşturun

1. **Repo'yu klonlayın:**3. API Keys bölümünden anahtarınızı alın

```bash

git clone https://github.com/KULLANICI_ADINIZ/mooweather.git### 4. Bağımlılıkları Yükleyin

cd mooweather```bash

```flutter pub get

```

2. **Bağımlılıkları yükleyin:**

```bash### 5. Uygulamayı Çalıştırın

flutter pub get```bash

```flutter run

```

3. **API key'inizi ekleyin:**

## 📁 Proje Yapısı

Proje kök dizininde `.env` dosyası oluşturun:

```env```

API_KEY_1=your_api_key_herelib/

API_KEY_2=your_api_key_here├── constants/

API_KEY_3=your_api_key_here│   └── app_colors.dart          # Renk paleti, gradientler, text styles

API_KEY_4=your_api_key_here├── models/

```│   ├── weather_model.dart       # Weather, HourlyForecast, DailyForecast

│   └── weather_exceptions.dart  # 8 özel exception sınıfı

> 💡 **API Key Nereden Alınır?**  ├── providers/

> [OpenWeatherMap](https://openweathermap.org/api) ücretsiz hesap oluşturun ve API key alın.│   └── weather_provider.dart    # Riverpod state management

├── screens/

4. **Uygulamayı çalıştırın:**│   ├── weather_screen.dart      # Ana ekran (modern UI)

```bash│   └── search_screen.dart       # Şehir arama ekranı

flutter run├── services/

```│   └── weather_service.dart     # API layer (multi-key, retry, timeout)

├── utils/

---│   └── weather_translator.dart  # İngilizce → Türkçe çevirici

├── widgets/

## 📦 Build│   ├── weather_card.dart        # 4 çeşit kart (main, info, hourly, daily)

│   └── loading_shimmer.dart     # Skeleton screen animasyonu

### Debug APK└── main.dart                    # Uygulama giriş noktası

```bash```

flutter build apk --debug

```## 🎓 Öğrenci Notları



### Release APK (Üretim için)Bu proje, bilgisayar programlama dersi için hazırlanmıştır. Kod içinde:

```bash- ✅ Detaylı Türkçe yorumlar

flutter build apk --release- ✅ "Öğrenci Notu:" etiketleriyle açıklamalar

```- ✅ Best practices örnekleri

- ✅ DRY (Don't Repeat Yourself) prensibi

APK dosyası: `build/app/outputs/flutter-apk/app-release.apk`- ✅ Clean code prensipleri



### Split APK (Daha küçük boyut)## 🐛 Hata Ayıklama

```bash

flutter build apk --split-per-abi### API Anahtarı Hatası

``````

InvalidApiKeyException

---```

**Çözüm:** `.env` dosyasında API anahtarınızı kontrol edin.

## 🛠️ Teknolojiler

### Konum İzni Hatası

### Framework & Dil```

- **Flutter** 3.0+ - UI FrameworkLocationServiceDisabledException

- **Dart** 3.0+ - Programlama Dili```

**Çözüm:** Cihazınızda GPS'i açın ve uygulamaya konum izni verin.

### Paketler

### API Limit Hatası

| Paket | Versiyon | Kullanım |```

|-------|----------|----------|ApiLimitExceededException

| `flutter_riverpod` | ^2.5.1 | State management |```

| `flutter_dotenv` | ^6.0.0 | Environment variables (API keys) |**Çözüm:** Birden fazla API anahtarı ekleyin (otomatik rotation yapılır).

| `http` | ^1.2.1 | RESTful API çağrıları |

| `geolocator` | ^11.0.0 | GPS konum servisi |## 📝 Lisans

| `logger` | ^2.6.2 | Debug loglama |

| `shimmer` | ^3.0.0 | Loading animasyonları |Bu proje eğitim amaçlıdır.

| `shared_preferences` | ^2.5.3 | Local storage |

| `flutter_launcher_icons` | ^0.13.1 | Uygulama ikonu oluşturma |## 👨‍💻 Geliştirici



### APIÜniversite Bilgisayar Programlama Projesi

- **OpenWeatherMap API v2.5** - Hava durumu verileri

---

## 📂 Proje Yapısı

```
lib/
├── main.dart                          # Ana giriş noktası
├── constants/
│   └── app_colors.dart               # Renkler, text styles, boyutlar
├── models/
│   ├── weather_model.dart            # Hava durumu data model
│   └── weather_exceptions.dart       # Custom exception'lar (8 tip)
├── providers/
│   └── weather_provider.dart         # Riverpod state management
├── screens/
│   ├── weather_screen.dart           # Ana hava durumu ekranı
│   ├── search_screen.dart            # Şehir arama ekranı
│   └── splash_screen.dart            # Açılış ekranı
├── services/
│   └── weather_service.dart          # API servisi (multi-key rotation)
├── utils/
│   └── weather_translator.dart       # Türkçe çeviriler (80+ terim)
└── widgets/
    ├── weather_card.dart             # Hava durumu kartları
    ├── loading_shimmer.dart          # Yükleme animasyonları
    └── moo_logo.dart                 # Custom logo widget
```

---

## 🎨 Tasarım Prensipleri

### Color Palette
```dart
// Açık Gün
clearDayGradient: [#4A90E2, #5BA3F5]

// Bulutlu
cloudyGradient: [#6B7B8C, #8E9EAB]

// Yağmurlu
rainGradient: [#4A5F7A, #6B8CAE]

// Kar
snowGradient: [#B8C6DB, #F5F7FA]

// Sis
fogGradient: [#9BA5B7, #C5CCD4]

// Gece
nightGradient: [#1E3A5F, #2E5090]

// Gök Gürültüsü
thunderGradient: [#2C3E50, #4A5F7A]
```

### Typography
- **Heading:** 32px, Bold, White
- **Body Large:** 18px, Regular, White
- **Body Medium:** 16px, Regular, White 80%
- **Body Small:** 14px, Regular, White 70%

---

## 🧠 Öğrenilen Konular

Bu proje ile şu konular öğrenildi/uygulandı:

### Flutter & Dart
- ✅ Widget tree yapısı
- ✅ StatefulWidget & StatelessWidget
- ✅ Custom widgets oluşturma
- ✅ Async programming (Future, async/await)
- ✅ Error handling & custom exceptions

### State Management
- ✅ Provider pattern (Riverpod)
- ✅ State lifecycle
- ✅ Reactive programming

### API Integration
- ✅ RESTful API çağrıları
- ✅ JSON parsing
- ✅ Error handling (HTTP status codes)
- ✅ Retry logic & rate limiting

### UI/UX Design
- ✅ Material Design principles
- ✅ Glassmorphism efektler
- ✅ Gradient backgrounds
- ✅ Custom animations
- ✅ Responsive design

### Best Practices
- ✅ Clean Architecture
- ✅ SOLID prensipleri
- ✅ Code organization
- ✅ Security (API key protection)
- ✅ Error logging

---

## 🔐 Güvenlik

### API Key Yönetimi
- ✅ `.env` dosyası kullanılıyor
- ✅ Git'e **dahil edilmiyor** (.gitignore)
- ✅ 4 adet API key rotation sistemi
- ✅ Rate limiting aktif

### Permissions
```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

---

## 🐛 Bilinen Sorunlar

Şu anda bilinen bir sorun bulunmuyor! ✅

Eğer bir sorun bulursanız, lütfen [Issue](https://github.com/KULLANICI_ADINIZ/mooweather/issues) açın.

---

## 🚧 Gelecek Geliştirmeler

### Öncelik 1 (Kolay)
- [ ] Dark mode desteği
- [ ] Sıcaklık birimi değiştirme (°C/°F)
- [ ] Favori şehirler listesi
- [ ] Cache sistemi (offline destek)

### Öncelik 2 (Orta)
- [ ] Bildirimler (günlük hava durumu)
- [ ] Widget desteği (home screen)
- [ ] Hava kalitesi verisi (AQI)

### Öncelik 3 (Zor)
- [ ] Çoklu dil desteği (EN, DE, FR)
- [ ] Hava durumu haritası
- [ ] Geçmiş hava durumu grafikleri

---

## 🤝 Katkıda Bulunma

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/AmazingFeature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some AmazingFeature'`)
4. Branch'inizi push edin (`git push origin feature/AmazingFeature`)
5. Pull Request açın

---

## 📄 Lisans

Bu proje eğitim amaçlıdır ve MIT lisansı altında paylaşılmaktadır.

---

## 👨‍💻 Geliştirici

**Üniversite Projesi**  
Yazılım Dersi - Ekim 2025

---

## 🙏 Teşekkürler

- [OpenWeatherMap](https://openweathermap.org/) - Hava durumu API
- [Flutter](https://flutter.dev/) - UI Framework
- [Riverpod](https://riverpod.dev/) - State Management
- [AccuWeather](https://www.accuweather.com/) - Tasarım ilhamı

---

<div align="center">

**MooWeather** - Hava durumu her an yanınızda! 🌤️

Made with ❤️ using Flutter

</div>
