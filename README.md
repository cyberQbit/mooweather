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

[**⬇️ Son Sürüm APK İndir (v0.1.0)**](https://github.com/cyberQbit/mooweather/releases/latest/download/app-release.apk)

*Minimum: Android 5.0 (API 21) • Dosya Boyutu: 50 MB*

</div>

---

## 📱 Proje Hakkında

[cite_start]MooWeather, modern Flutter framework'ü ile geliştirilmiş, AccuWeather ve Google Weather'dan ilham alan bir tasarıma sahip hava durumu uygulamasıdır. [cite: 31] [cite_start]Türkçe dil desteği, glassmorphism efektleri ve akıcı animasyonlarla zenginleştirilmiş kullanıcı dostu bir deneyim sunar. [cite: 32]

[cite_start]**🎯 Proje Amacı:** Bu uygulama, bir **üniversite bilgisayar programlama dersi projesi** kapsamında, modern mobil uygulama geliştirme tekniklerini öğrenmek ve uygulamak amacıyla geliştirilmiştir. [cite: 33]

---

## ✨ Özellikler

### 🎨 Modern UI/UX
- ✅ **AccuWeather Tarzı Tasarım:** Profesyonel, modern ve minimalist arayüz.
- ✅ **Glassmorphism Efektleri:** Yarı saydam, bulanık arka planlı şık kartlar.
- ✅ **Dinamik Gradient Arka Planlar:** Hava durumuna (açık, bulutlu, yağmurlu vb.) göre değişen arayüz renkleri.
- ✅ **Akıcı Animasyonlar:** Pull-to-refresh ve "shimmer" iskelet yükleme animasyonları.
- [cite_start]✅ **Duyarlı Tasarım:** Klavye açıldığında taşma yapmayan, uyumlu arayüz. [cite: 42]

### 🔧 Teknik Üstünlükler
- [cite_start]✅ **Multi-API Key Rotation:** Kesintisiz hizmet için 4 farklı API anahtarı arasında otomatik geçiş. [cite: 44]
- [cite_start]✅ **Retry Logic:** Ağ hatası durumunda `exponential backoff` stratejisiyle 3 kez yeniden deneme. [cite: 47]
- [cite_start]✅ **Rate Limiting:** API limit aşımı hatalarını önlemek için istemci taraflı istek sınırlama. [cite: 52]
- [cite_start]✅ **8 Farklı Custom Exception:** Detaylı ve yönetilebilir hata takibi için özel istisna sınıfları. [cite: 53]
- [cite_start]✅ **Güvenli API Yönetimi:** API anahtarlarının `.env` dosyası ile koddan soyutlanarak güvenli bir şekilde saklanması. [cite: 53]
- [cite_start]✅ **Logger Entegrasyonu:** Sadece debug modunda çalışan detaylı loglama sistemi. [cite: 54]

### 🇹🇷 Kapsamlı Türkçe Lokalizasyon
- [cite_start]✅ **80+ Terim Çevirisi:** Hava durumuyla ilgili 80'den fazla terimin Türkçe karşılığı. [cite: 56]
- [cite_start]✅ **Tamamen Türkçe Arayüz:** Uygulamanın tüm menü ve açıklamaları Türkçe. [cite: 57]
- [cite_start]✅ **Türkçe Şehir Arama Desteği:** Arama fonksiyonu Türkçe karakterlerle uyumlu. [cite: 60]

### 🌍 Hava Durumu Verileri
- [cite_start]✅ **Anlık Durum:** Sıcaklık, hissedilen sıcaklık, nem, basınç, rüzgar hızı ve görüş mesafesi. [cite: 65]
- [cite_start]✅ **Saatlik ve Günlük Tahminler:** Gelecek saatler ve günler için hava durumu öngörüleri. [cite: 69]
- [cite_start]✅ **GPS Desteği:** Cihazın konumunu otomatik olarak algılayarak hava durumunu gösterme. [cite: 72]
- [cite_start]✅ **Manuel Arama:** İstenilen şehri aratarak hava durumunu öğrenme. [cite: 75]

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

[cite_start]Projeyi yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin. [cite: 79]

### 1. Gereksinimler
- [cite_start]Flutter SDK (versiyon 3.0.0 veya üstü) [cite: 81]
- [cite_start]Android Studio veya VS Code [cite: 82]
- [cite_start]Android Emülatör veya Fiziksel Cihaz (API 21+) [cite: 83]

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
[cite_start]Projenin çalışması için bir OpenWeatherMap API anahtarına ihtiyacınız var. [cite: 89]

- [cite_start]Proje kök dizininde `.env` adında bir dosya oluşturun. [cite: 90]
- [cite_start][OpenWeatherMap](https://openweathermap.org/api) adresinden ücretsiz bir API anahtarı alın. [cite: 91]
- [cite_start]Oluşturduğunuz `.env` dosyasına anahtarınızı aşağıdaki gibi ekleyin: [cite: 92]

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

[cite_start]Bu proje, **MIT Lisansı** altında lisanslanmıştır. [cite: 100] [cite_start]Detaylar için `LICENSE` dosyasına göz atabilirsiniz. [cite: 100]

---

## 🙏 Teşekkürler
- [cite_start]Hava durumu verileri için [OpenWeatherMap](https://openweathermap.org/) [cite: 102]
- [cite_start]Harika UI framework'ü için [Flutter](https://flutter.dev/) [cite: 103]
- [cite_start]Modern state management çözümü için [Riverpod](https://riverpod.dev/) [cite: 104]
- [cite_start]Tasarım ilhamı için [AccuWeather](https://www.accuweather.com/) [cite: 105]

<div align="center">
  <br>
  [cite_start]<strong>MooWeather</strong> - Hava durumu her an yanınızda! [cite: 106]
  <br>
  <small>Aydın (cyberQbit) Aydemir tarafından geliştirildi.</small>
</div>
