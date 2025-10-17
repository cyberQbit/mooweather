# 🌤️ MooWeather

<div align="center">

**AccuWeather ve Google Weather tarzında tasarlanmış, modern ve kullanıcı dostu bir arayüze sahip, Flutter ile geliştirilmiş Türkçe hava durumu uygulaması.**

</div>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.0+-02569B?style=for-the-badge&logo=flutter" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-3.0+-0175C2?style=for-the-badge&logo=dart" alt="Dart">
  <img src="https://img.shields.io/badge/Platform-Android-3DDC84?style=for-the-badge&logo=android" alt="Android">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
</p>

<p align="center">
  <a href="#-özellikler">Özellikler</a> •
  <a href="#-kurulum">Kurulum</a> •
  <a href="#-teknolojiler">Teknolojiler</a> •
  <a href="#-lisans">Lisans</a>
</p>

<div align="center">

[**⬇️ Son Sürüm APK İndir (v1.0.0)**](https://github.com/cyberQbit/mooweather/releases/latest/download/app-release.apk)

*Minimum: Android 5.0 (API 21) • Dosya Boyutu: ~15-20 MB*

</div>

---

## 📱 Proje Hakkında

MooWeather, modern Flutter framework'ü ile geliştirilmiş, AccuWeather ve Google Weather'dan ilham alan bir tasarıma sahip hava durumu uygulamasıdır. Türkçe dil desteği, glassmorphism efektleri ve akıcı animasyonlarla zenginleştirilmiş kullanıcı dostu bir deneyim sunar.

[cite_start]**🎯 Proje Amacı:** Bu uygulama, bir **üniversite bilgisayar programlama dersi projesi** kapsamında, modern mobil uygulama geliştirme tekniklerini öğrenmek ve uygulamak amacıyla geliştirilmiştir. [cite: 25, 35, 38]

---

## ✨ Özellikler

### 🎨 Modern UI/UX
- [cite_start]✅ **AccuWeather Tarzı Tasarım:** Profesyonel, modern ve minimalist arayüz. [cite: 18, 43, 102]
- [cite_start]✅ **Glassmorphism Efektleri:** Yarı saydam, bulanık arka planlı şık kartlar. [cite: 44, 86, 104]
- [cite_start]✅ **Dinamik Gradient Arka Planlar:** Hava durumuna (açık, bulutlu, yağmurlu vb.) göre değişen arayüz renkleri. [cite: 45, 107]
- [cite_start]✅ **Akıcı Animasyonlar:** Pull-to-refresh ve "shimmer" iskelet yükleme animasyonları. [cite: 46, 47, 96, 108]
- ✅ **Duyarlı Tasarım:** Klavye açıldığında taşma yapmayan, uyumlu arayüz.

### 🔧 Teknik Üstünlükler
- [cite_start]✅ **Multi-API Key Rotation:** Kesintisiz hizmet için 4 farklı API anahtarı arasında otomatik geçiş. [cite: 56, 127]
- [cite_start]✅ **Retry Logic:** Ağ hatası durumunda `exponential backoff` stratejisiyle 3 kez yeniden deneme. [cite: 57, 131, 199]
- [cite_start]✅ **Rate Limiting:** API limit aşımı hatalarını önlemek için istemci taraflı istek sınırlama. [cite: 58, 132, 184]
- [cite_start]✅ **8 Farklı Custom Exception:** Detaylı ve yönetilebilir hata takibi için özel istisna sınıfları. [cite: 59, 136]
- [cite_start]✅ **Güvenli API Yönetimi:** API anahtarlarının `.env` dosyası ile koddan soyutlanarak güvenli bir şekilde saklanması. [cite: 60, 137]
- [cite_start]✅ **Logger Entegrasyonu:** Sadece debug modunda çalışan detaylı loglama sistemi. [cite: 62, 140]

### 🇹🇷 Kapsamlı Türkçe Lokalizasyon
- [cite_start]✅ **80+ Terim Çevirisi:** Hava durumuyla ilgili 80'den fazla terimin Türkçe karşılığı. [cite: 49, 115]
- [cite_start]✅ **Tamamen Türkçe Arayüz:** Uygulamanın tüm menü ve açıklamaları Türkçe. [cite: 52, 118]
- [cite_start]✅ **Türkçe Şehir Arama Desteği:** Arama fonksiyonu Türkçe karakterlerle uyumlu. [cite: 51, 121]

### 🌍 Hava Durumu Verileri
- [cite_start]✅ **Anlık Durum:** Sıcaklık, hissedilen sıcaklık, nem, basınç, rüzgar hızı ve görüş mesafesi. [cite: 64, 67, 68, 71]
- [cite_start]✅ **Saatlik ve Günlük Tahminler:** Gelecek saatler ve günler için hava durumu öngörüleri. [cite: 139, 146]
- [cite_start]✅ **GPS Desteği:** Cihazın konumunu otomatik olarak algılayarak hava durumunu gösterme. [cite: 72, 160]
- [cite_start]✅ **Manuel Arama:** İstenilen şehri aratarak hava durumunu öğrenme. [cite: 73, 162]

---

## 🛠️ Teknolojiler

| Teknoloji | Versiyon | Amaç |
|:--- |:--- |:--- |
| **Flutter** | 3.0+ | Cross-Platform UI Framework |
| **Dart** | 3.0+ | Programlama Dili |
| **Riverpod** | ^2.5.1 | State Management (Modern ve Güvenli) |
| **OpenWeatherMap API**| v2.5 | Hava Durumu Veri Sağlayıcısı |
| **flutter_dotenv** | ^6.0.0 | Güvenli API Anahtarı Yönetimi |
| **http** | ^1.2.1 | RESTful API Çağrıları |
| **geolocator** | ^11.0.0 | GPS Konum Servisleri |
| **logger** | ^2.6.2 | Detaylı Hata Ayıklama (Debug) Logları |
| **shimmer** | ^3.0.0 | Modern Yükleme Animasyonları |

---

## 🚀 Kurulum

Projeyi yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin.

### 1. Gereksinimler
- Flutter SDK (versiyon 3.0.0 veya üstü)
- Android Studio veya VS Code
- [cite_start]Android Emülatör veya Fiziksel Cihaz (API 21+) [cite: 79]

### 2. Projeyi Klonlayın
```bash
git clone [https://github.com/cyberQbit/mooweather.git](https://github.com/cyberQbit/mooweather.git)
cd mooweather
```

### 3. Bağımlılıkları Yükleyin
```bash
flutter pub get
```

### 4. API Anahtarını Ayarlayın
Projenin çalışması için bir OpenWeatherMap API anahtarına ihtiyacınız var.

- Proje kök dizininde `.env` adında bir dosya oluşturun.
- [OpenWeatherMap](https://openweathermap.org/api) adresinden ücretsiz bir API anahtarı alın.
- Oluşturduğunuz `.env` dosyasına anahtarınızı aşağıdaki gibi ekleyin:

```env
OPENWEATHER_API_KEY=BURAYA_API_ANAHTARINIZI_YAPISTIRIN
# Birden fazla anahtar ekleyerek 'key rotation' özelliğini kullanabilirsiniz
# OPENWEATHER_API_KEY_2=IKINCI_ANAHTAR
# OPENWEATHER_API_KEY_3=UCUNCU_ANAHTAR
```

### 5. Uygulamayı Çalıştırın
```bash
flutter run
```

---

## 📄 Lisans

Bu proje, **MIT Lisansı** altında lisanslanmıştır. [cite_start]Detaylar için `LICENSE` dosyasına göz atabilirsiniz. [cite: 1]

---

## 🙏 Teşekkürler
- Hava durumu verileri için [OpenWeatherMap](https://openweathermap.org/)
- Harika UI framework'ü için [Flutter](https://flutter.dev/)
- Modern state management çözümü için [Riverpod](https://riverpod.dev/)
- Tasarım ilhamı için [AccuWeather](https://www.accuweather.com/)

<div align="center">
  <br>
  <strong>MooWeather</strong> - Hava durumu her an yanınızda!
  <br>
  <small>Aydın (cyberQbit) Aydemir tarafından geliştirildi.</small>
</div>
