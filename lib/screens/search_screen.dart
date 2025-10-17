// lib/screens/search_screen.dart
//
// Şehir arama ekranı

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _cityController = TextEditingController();

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Klavye açıldığında içeriği yukarı kaydır
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.clearDayGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Üst kısım: Geri butonu ve başlık (sabit)
              Padding(
                padding: const EdgeInsets.all(AppDimens.paddingLarge),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius:
                            BorderRadius.circular(AppDimens.radiusSmall),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_rounded,
                            color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const SizedBox(width: AppDimens.paddingMedium),
                    Text('Şehir Ara', style: AppTextStyles.heading1),
                  ],
                ),
              ),

              // Ana içerik (scroll edilebilir)
              Expanded(
                child: SingleChildScrollView(
                  // Klavye açıldığında padding ekle
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppDimens.paddingLarge),
                    child: Column(
                      children: [
                        // Biraz boşluk ekle (klavye açıldığında taşmayacak kadar küçük)
                        const SizedBox(height: 40),

                        Icon(Icons.search_rounded,
                            size: 80, color: Colors.white.withOpacity(0.9)),
                        const SizedBox(height: AppDimens.paddingLarge),
                        Text(
                            'Hava durumunu görmek istediğiniz\nşehrin adını girin',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.bodyLarge.copyWith(
                                color: Colors.white.withOpacity(0.9))),
                        const SizedBox(height: AppDimens.paddingLarge),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius:
                                BorderRadius.circular(AppDimens.radiusMedium),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 1.5),
                          ),
                          child: TextField(
                            controller: _cityController,
                            style: AppTextStyles.bodyLarge,
                            decoration: InputDecoration(
                              labelText: 'Şehir Adı',
                              labelStyle: AppTextStyles.bodyMedium.copyWith(
                                  color: Colors.white.withOpacity(0.7)),
                              prefixIcon: Icon(Icons.location_city_rounded,
                                  color: Colors.white.withOpacity(0.8)),
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.all(AppDimens.paddingMedium),
                            ),
                            onSubmitted: (value) {
                              if (value.isNotEmpty) {
                                Navigator.pop(context, value.trim());
                              }
                            },
                            textCapitalization: TextCapitalization.words,
                          ),
                        ),
                        const SizedBox(height: AppDimens.paddingLarge),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_cityController.text.isNotEmpty) {
                                Navigator.pop(
                                    context, _cityController.text.trim());
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: AppColors.primaryBlue,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimens.radiusMedium),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.check_circle_rounded),
                                const SizedBox(width: AppDimens.paddingSmall),
                                Text('Hava Durumunu Gör',
                                    style: AppTextStyles.bodyLarge.copyWith(
                                        color: AppColors.primaryBlue,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: AppDimens.paddingMedium),
                        Text('Örnek: Istanbul, Ankara, Izmir',
                            style: AppTextStyles.bodySmall.copyWith(
                                color: Colors.white.withOpacity(0.7),
                                fontStyle: FontStyle.italic)),

                        // Klavye için ek boşluk
                        const SizedBox(height: AppDimens.paddingXLarge),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
