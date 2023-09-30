import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  const QuranItem(
      {super.key, required this.suraname, required this.suranumber});

  final String suraname;
  final String suranumber;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Text(
          suraname,
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
            child: Text(suranumber,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.onSecondary),
                textAlign: TextAlign.center)),
      ],
    );
  }
}
