import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth_tab/hadeth_details.dart';
import 'package:islami_app/moduls/quran_tab/quran_details_view.dart';
import 'package:provider/provider.dart';
import 'core/Application_theme.dart';
import 'core/provider/app_provider.dart';
import 'layout/home_layout.dart';
import 'moduls/Splash_screen/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appProvider.currentLocal),
        themeMode: appProvider.currentTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeLayout.routeName: (context) => HomeLayout(),
          QuranDetails.routeName: (context) => QuranDetails(),
          HadethDetails.routeName: (context) => HadethDetails(),
        });
  }
}
