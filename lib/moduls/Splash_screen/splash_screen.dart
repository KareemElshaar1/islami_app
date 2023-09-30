import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:provider/provider.dart';

import '../../core/Application_theme.dart';
import '../../core/provider/app_provider.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    var mediaquery = MediaQuery.of(context).size;
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
        body: Image.asset(
      appProvider.splashScreen(),
      width: mediaquery.width,
      height: mediaquery.height,
      fit: BoxFit.cover,
    ));
  }
}
