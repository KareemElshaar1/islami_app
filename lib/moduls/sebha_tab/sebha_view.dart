import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(children: [
        Center(
          child: Stack(alignment: Alignment.topCenter, children: [
            Container(
              margin: EdgeInsets.only(
                top: 82,
              ),
              child: Image.asset("assets/images/body_of_seb7a.png"),
            ),
            Container(
                margin: EdgeInsets.only(left: 65),
                child: Image.asset("assets/images/head_of_seb7a.png")),
          ]),
        ),
      ]),
    );
  }
}
