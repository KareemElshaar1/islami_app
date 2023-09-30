import 'package:flutter/material.dart';

class UnSelectedOptinWidget extends StatelessWidget {
  final String UnselectedTitle;

  UnSelectedOptinWidget({super.key, required this.UnselectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(UnselectedTitle,
        style: theme.textTheme.bodyMedium!
            .copyWith(color: theme.colorScheme.onSecondary));
  }
}
