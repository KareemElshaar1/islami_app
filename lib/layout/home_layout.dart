import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/hadeth_tab/hadeth_view.dart';
import 'package:islami_app/moduls/quran_tab/quran_view.dart';
import 'package:islami_app/moduls/radio_tab/radio_view.dart';
import 'package:islami_app/moduls/sebha_tab/sebha_view.dart';
import 'package:provider/provider.dart';

import '../core/provider/app_provider.dart';
import '../moduls/setting_tab/setting_view.dart';

class HomeLayout extends StatefulWidget {
  static String routeName = "home_layout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    SebhaView(),
    HadethView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    var local = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(appProvider.backgroundImage()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islamic,
                style: theme.textTheme.titleLarge!
                    .copyWith(color: theme.colorScheme.onSecondary))),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: local.quran),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: local.sebha),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                  label: local.hadeth),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: local.radio),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: local.setting,
              ),
            ]),
        body: screens[selectedIndex],
      ),
    );
  }
}
