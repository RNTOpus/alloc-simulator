import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Footer extends StatelessWidget {
  String text;
  Function() onPressed;
  Footer({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AloPaddings.page,
      child: BottomButton(
        text: text,
        onPressed: onPressed,
      ),
    );
  }
}
