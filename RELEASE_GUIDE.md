# 🚀 GitHub Release Oluşturma Rehberi

## 📦 APK'yı Release Olarak Yükleme

### ADIM 1: APK'yı Hazırla

APK dosyası burada olmalı:
```
C:\mooweather\mooweather\build\app\outputs\flutter-apk\app-release.apk
```

### ADIM 2: GitHub'da Release Oluştur

1. **Repository'ye git:**
   - https://github.com/cyberQbit/mooweather

2. **Releases bölümüne git:**
   - Sağ taraftaki menüden "Releases" tıkla
   - VEYA direkt: https://github.com/cyberQbit/mooweather/releases

3. **"Create a new release" tıkla**

### ADIM 3: Release Bilgilerini Doldur

**Tag version:**
```
v1.0.0
```

**Release title:**
```
🎉 MooWeather v1.0.0 - Initial Release
```

**Description:**
```markdown
## 🌤️ MooWeather v1.0.0

İlk stabil sürüm! Modern Turkish weather app with AccuWeather-style design.

### ✨ Özellikler

- ✅ Modern glassmorphism UI
- ✅ Türkçe lokalizasyon (80+ terim)
- ✅ Multi-API key rotation
- ✅ Pull-to-refresh
- ✅ GPS konum desteği
- ✅ Saatlik/günlük tahminler
- ✅ Custom logo ve animasyonlar

### 📦 İndirme

**Android APK:** `app-release.apk` (15-20 MB)

**Minimum:** Android 5.0 (API 21)

### 🔧 Kurulum

1. APK'yı indirin
2. "Bilinmeyen kaynaklardan yükleme" iznini verin
3. APK'yı açın ve yükleyin
4. OpenWeatherMap API key'inizi `.env` dosyasına ekleyin

### 📝 Değişiklikler

#### Added
- Modern hava durumu arayüzü
- Türkçe dil desteği
- GPS konum desteği
- Şehir arama özelliği
- Multi-API key rotation sistemi
- Custom exception handling
- Logger entegrasyonu

#### Technical
- Flutter 3.0+
- Riverpod state management
- OpenWeatherMap API v2.5
- 8 custom exception türü
- Retry logic & rate limiting

### 🐛 Bilinen Sorunlar

Yok! ✅

### 🙏 Teşekkürler

OpenWeatherMap, Flutter Team, Riverpod geliştiricilerine teşekkürler!

---

**Full Changelog**: https://github.com/cyberQbit/mooweather/commits/v1.0.0
```

### ADIM 4: APK'yı Yükle

1. **"Attach binaries" altında:**
   - "Choose files" veya dosyayı sürükle-bırak
   
2. **APK dosyasını seç:**
   ```
   C:\mooweather\mooweather\build\app\outputs\flutter-apk\app-release.apk
   ```

3. **Dosya yüklenene kadar bekle**

### ADIM 5: Release'i Yayınla

1. **"Set as the latest release"** işaretle ✅
2. **"Publish release"** tıkla

---

## 🎉 Tamamlandı!

Release linki:
```
https://github.com/cyberQbit/mooweather/releases/tag/v1.0.0
```

Download linki:
```
https://github.com/cyberQbit/mooweather/releases/download/v1.0.0/app-release.apk
```

---

## 📝 Alternatif: GitHub CLI ile Release

Eğer GitHub CLI yüklüyse:

```bash
gh release create v1.0.0 \
  build/app/outputs/flutter-apk/app-release.apk \
  --title "🎉 MooWeather v1.0.0 - Initial Release" \
  --notes "İlk stabil sürüm! Modern Turkish weather app."
```

---

## ✅ Release Sonrası Kontrol

1. **README.md'deki download linki çalışıyor mu?**
   - https://github.com/cyberQbit/mooweather

2. **APK indirilip kurulabiliyor mu?**

3. **Release badge ekle (opsiyonel):**
```markdown
![Release](https://img.shields.io/github/v/release/cyberQbit/mooweather)
```

---

**Başarılı bir release için tüm adımları takip et!** 🚀
