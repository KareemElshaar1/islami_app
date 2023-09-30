import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/Application_theme.dart';
import 'package:islami_app/moduls/quran_tab/quran_view.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class QuranDetails extends StatefulWidget {
  static String routeName = "quran_details";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFiles(args.suranumber);

    var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(appProvider.backgroundImage()),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
                title: const Text(
              "اسلامي",
            )),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 120),
              width: mediaquery.width,
              height: mediaquery.height,
              decoration: BoxDecoration(
                  color: theme.colorScheme.onBackground,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " سورة${args.suraname}",
                        style: theme.textTheme.bodyLarge!
                            .copyWith(color: theme.colorScheme.secondary),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.play_circle_fill,
                        color: theme.colorScheme.secondary,
                        size: 32,
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1.2,
                    indent: 30,
                    endIndent: 30,
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) => Text(
                        textAlign: TextAlign.center,
                        content,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.secondary),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
