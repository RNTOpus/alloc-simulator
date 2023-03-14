import 'package:alo_simulator/styles/alo_colors.dart';
import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/styles/alo_text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  String text;
  Function() onPressed;
  BottomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: AloPaddings.bottomButton,
            backgroundColor: AloColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            text,
            style: AloTextStyles.buttonText,
          ),
        ),
      ),
    );
  }
}
