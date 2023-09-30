import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef settingsOptionClicked = void Function();

class SettingItem extends StatelessWidget {
  final String settingOptionTitle;
  final String selectOption;
  final settingsOptionClicked onOptionTabed;

  SettingItem(
      {super.key,
      required this.settingOptionTitle,
      required this.onOptionTabed,
      required this.selectOption});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.onSecondary),
        ),
        GestureDetector(
          onTap: onOptionTabed,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: mediaquery.width,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: theme.colorScheme.onPrimary, width: 1.2)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectOption,
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onSecondary),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.onSecondary,
                  )
                ]),
          ),
        )
      ],
    );
  }
}
