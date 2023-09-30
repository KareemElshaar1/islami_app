import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  static const String routeName = "Radio Tab";

  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Image.asset("assets/images/radio_image.png"),
        ),
        Center(
          child: Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fast_rewind,
                  color: theme.colorScheme.primary,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 35,
                  color: theme.colorScheme.primary,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fast_forward,
                  color: theme.colorScheme.primary,
                )),
          ],
        )
      ],
    );
  }
}
