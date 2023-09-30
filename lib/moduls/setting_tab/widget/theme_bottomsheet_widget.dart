import 'package:flutter/material.dart';
import 'package:islami_app/moduls/setting_tab/widget/selected_option_widget.dart';
import 'package:islami_app/moduls/setting_tab/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/app_provider.dart';

class themeBottomSheetWidget extends StatelessWidget {
  const themeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? SelectedOptionWidget(selectedTitle: 'Dark ')
                  : UnSelectedOptinWidget(UnselectedTitle: "Dark")),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: appProvider.isDark()
                  ? UnSelectedOptinWidget(UnselectedTitle: "Light")
                  : SelectedOptionWidget(selectedTitle: 'Light '))
        ],
      ),
    );
  }
}
