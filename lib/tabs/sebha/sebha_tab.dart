import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(children: [
        Image.asset(
          'assets/images/head_sebha_logo.png',
        ),
        Image.asset(
          'assets/images/body_sebha_logo.png',
        ),
        Text('')
      ])
    ]);
  }
}
