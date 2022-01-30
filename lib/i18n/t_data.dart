// ignore_for_file: lines_longer_than_80_chars
import 'dart:ui';
import 'package:flutter/material.dart';


//ignore: avoid_classes_with_only_static_members
abstract class TData {
  
    static Map<String, Map<String, String>> byKeys = {};
  static Map<String, Map<String, String>> byText = {};

  
    static Map<String, String> mapLocaleKeysToMasterText(
      Map<String, String> localeMap,
      {Map<String, String>? masterMap,}) {
    final output = <String, String>{};
    final _masterMap =
        masterMap ?? TData.byKeys[AppLocales.available.first.key]!;
    for (var k in localeMap.keys) {
      output[_masterMap[k]!] = localeMap[k]!;
    }
    return output;
  }
}

//ignore: avoid_classes_with_only_static_members
abstract class AppLocales {
  static const en = LangVo("English", "English", "en", Locale("en"), "🇬🇧");
  static const th = LangVo("ภาษาไทย", "Thai", "th", Locale("th"), "🇹🇭");
  static const hi = LangVo("हिन्दी", "Hindi", "hi", Locale("hi"), "🇮🇳");
  static const available = <LangVo>[en,th,hi];
  static List<Locale> get supportedLocales => [en.locale,th.locale,hi.locale];
  static Locale get systemLocale => window.locale;
  static List<Locale> get systemLocales => window.locales;
  static LangVo? of(Locale locale, [bool fullMatch = false]) {
    for (final langVo in AppLocales.available) {
      if ((!fullMatch && langVo.locale.languageCode == locale.languageCode) ||
          langVo.locale == locale) {
        return langVo;
      }
    }
    return null;
  }  
}

class LangVo {
  final String nativeName, englishName, key, flagChar;
  final Locale locale;
  const LangVo(this.nativeName, this.englishName, this.key, this.locale, [this.flagChar='']);
  @override
  String toString() => 'LangVo {nativeName: "$nativeName", englishName: "$englishName", locale: $locale, emoji: this.flagChar}';
}


/// demo widget

/// Dropdown menu with available locales.
/// Useful to test changing Locales.
class SimpleLangPicker extends StatelessWidget {
  final Locale? selected;
  final Function(Locale) onSelected;
  const SimpleLangPicker({
    Key? key,
    this.selected,
    required this.onSelected,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _selected = selected ?? AppLocales.supportedLocales.first;
    return PopupMenuButton<Locale>(
      tooltip: 'Select language',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.translate,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text(AppLocales.of(_selected)?.englishName ?? '-')
          ],
        ),
      ),
      initialValue: _selected,
      onSelected: onSelected,
      itemBuilder: (_) {
        return AppLocales.available
            .map(
              (e) => PopupMenuItem<Locale>(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            e.englishName,
                            style: const TextStyle(
                              fontSize: 14,
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w300,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            e.nativeName,
                            style: const TextStyle(
                              fontSize: 11,
                              letterSpacing: .15,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      e.key.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                value: e.locale,
              ),
            )
            .toList(growable: false);
      },
    );
  }
}


