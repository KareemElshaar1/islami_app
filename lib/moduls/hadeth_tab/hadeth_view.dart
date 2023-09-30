import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth_tab/hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<hadethDetails> Allhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Allhadeth.isEmpty) readFiles();
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            thickness: 1.2,
            indent: 10,
            endIndent: 10,
            height: 5,
          ),
          Text(
            "الأحاديث",
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onSecondary),
          ),
          const Divider(
            thickness: 1.2,
            indent: 10,
            endIndent: 10,
            height: 5,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: hadethDetails(
                          title: Allhadeth[index].title,
                          content: Allhadeth[index].content));
                },
                child: Text(
                  Allhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.onSecondary),
                ),
              ),
              itemCount: Allhadeth.length,
              separatorBuilder: (context, index) => const Divider(
                thickness: 1.2,
                indent: 80,
                endIndent: 80,
                height: 5,
              ),
            ),
          )
        ],
      ),
    );
  }

  readFiles() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethStore = text.split("#");
    for (int i = 0; i < allHadethStore.length; i++) {
      String singleHadeth = allHadethStore[i].trim();
      int indexofFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexofFirstLine);
      String content = singleHadeth.substring(indexofFirstLine + 1);
      hadethDetails hadethdetails =
          hadethDetails(title: title, content: content);

      setState(() {
        Allhadeth.add(hadethdetails);
      });
      print(title);
    }
  }
}

class hadethDetails {
  const hadethDetails({required this.title, required this.content});

  final String title;
  final String content;
}
