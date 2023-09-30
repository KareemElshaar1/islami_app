import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int count = 0;
  String zekr = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    var theme = Theme.of(context);
    return Scaffold(
      body: Column(children: [
        Center(
          child: Stack(alignment: Alignment.topCenter, children: [
            Container(
              margin: const EdgeInsets.only(right: 0, bottom: 75),
              child: Image.asset(appProvider.sebhahead()),
            ),
            Container(
                margin: EdgeInsets.only(top: 80, right: 25),
                child: Image.asset(appProvider.sebhabody())),
          ]),
        ),
        Text("عدد التسبيحات ",
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onSecondary)),
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.center,
          width: 87,
          height: 60,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "$count",
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onSecondary),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: theme.colorScheme.surface,
              backgroundColor: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              incrementCount();
            },
            child: Text(
              "$zekr",
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: theme.colorScheme.surface),
            )),
        // IconButton(onPressed: () {
        //   resetCount();
        // },icon: const Icon(Icons.restart_alt_outlined), )
      ]),
    );
  }

  void incrementCount() {
    setState(() {
      count++;
      if (count == 0) {
        zekr = "سبحان الله";
      } else if (count == 33) {
        zekr = "الحمدالله";
      } else if (count == 66) {
        zekr = "الله اكبر";
      } else if (count == 99) {
        resetCount();
      }
    });
  }

  void resetCount() {
    setState(() {
      count = 0;
      zekr = "سبحان الله";
    });
  }
}
