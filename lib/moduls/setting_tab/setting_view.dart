import 'package:flutter/material.dart';
import 'package:islami_app/moduls/setting_tab/widget/language_bottomsheet_widget.dart';
import 'package:islami_app/moduls/setting_tab/widget/setting_item.dart';
import 'package:islami_app/moduls/setting_tab/widget/theme_bottomsheet_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/provider/app_provider.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SettingItem(
            settingOptionTitle: local.language,
            onOptionTabed: () {
              ShowLanguageBottomSheet(context);
            },
            selectOption:
                appProvider.currentLocal == "en" ? local.english : local.arabic,
          ),
          const SizedBox(
            height: 50,
          ),
          SettingItem(
            settingOptionTitle: local.thememode,
            onOptionTabed: () {
              ShowThemeBottomSheet(context);
            },
            selectOption: appProvider.isDark() ? local.dark : local.light,
          ),
        ]));
  }
}

void ShowLanguageBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => LanguageBootomSheetWidget());
}

void ShowThemeBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => themeBottomSheetWidget());
}
