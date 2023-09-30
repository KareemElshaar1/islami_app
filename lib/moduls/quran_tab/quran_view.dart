import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran_tab/quran_details_view.dart';
import 'package:islami_app/moduls/quran_tab/widget.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<String> Suranames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: Column(children: [
      Image.asset("assets/images/quran_image.png"),
      Divider(
        thickness: 1.4,
        indent: 10,
        endIndent: 10,
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Text(
                "اسم السورة",
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onSecondary),
            textAlign: TextAlign.center,
          )),
          Container(
            width: 1.3,
            height: 45,
            color: theme.colorScheme.onPrimary,
          ),
          Expanded(
              child: Text("رقم السورة",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.onSecondary),
                  textAlign: TextAlign.center)),
        ],
      ),
      Divider(
        thickness: 1.4,
        indent: 10,
        endIndent: 10,
        height: 5,
      ),
      Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetails.routeName,
                  arguments: SuraDetails(
                      suraname: Suranames[index], suranumber: "${index + 1}"));
            },
            child: QuranItem(
              suraname: Suranames[index],
              suranumber: "${index + 1}",
            ),
          ),
          itemCount: Suranames.length,
        ),
      )
    ]));
  }
}

class SuraDetails {
  const SuraDetails({required this.suraname, required this.suranumber});

  final String suraname;
  final String suranumber;
}
