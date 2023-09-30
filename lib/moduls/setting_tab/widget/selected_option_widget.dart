import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String selectedTitle;

  SelectedOptionWidget({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.colorScheme.primary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedTitle,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onSecondary),
          ),
          Icon(
            Icons.check,
            color: theme.colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
