// This is a basic Flutter widget test.
//
// MooWeather uygulaması için basit widget testi
//
// Öğrenci Notu:
// Test yazmak, kodunuzun doğru çalıştığından emin olmak için önemlidir
// Bu test, uygulamanın başlatılabildiğini kontrol eder

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mooweather/main.dart';

void main() {
  testWidgets('MooWeather app smoke test', (WidgetTester tester) async {
    // Uygulamayı başlat ve bir frame tetikle
    // Öğrenci Notu: pumpWidget, widget'ı test ortamına yükler
    await tester.pumpWidget(
      const ProviderScope(
        child: MooWeatherApp(),
      ),
    );

    // Uygulamanın yüklendiğini doğrula
    // Öğrenci Notu: expect fonksiyonu, beklenen sonucu kontrol eder
    expect(find.byType(MaterialApp), findsOneWidget);

    // Not: Gerçek hava durumu verileri API'den geldiği için
    // burada sadece uygulamanın başladığını kontrol ediyoruz
  });
}
