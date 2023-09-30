import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';
import 'hadeth_view.dart';

class HadethDetails extends StatefulWidget {
  static String routeName = "hadeth_details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as hadethDetails;
    // if (content.isEmpty) readFiles(args.);

    var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(appProvider.backgroundImage()),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
                title: Text(AppLocalizations.of(context)!.islamic,
                    style: theme.textTheme.titleLarge!
                        .copyWith(color: theme.colorScheme.onSecondary))),
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
                  Text(
                    args.title,
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onSecondary),
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
                        args.content,
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
