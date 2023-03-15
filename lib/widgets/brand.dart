import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/styles/alo_text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Brand extends StatelessWidget {
  bool inHeader;
  Brand({Key? key, this.inHeader = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: inHeader ? EdgeInsets.all(0) : AloPaddings.brand,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Allok',
            style: inHeader ? AloTextStyles.brandInHeader : AloTextStyles.brand,
          )
        ],
      ),
    );
  }
}
