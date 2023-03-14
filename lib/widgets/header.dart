import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/widgets/brand.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AloPaddings.header,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Brand(inHeader: true),
          Row(
            children: [
              Icon(Icons.filter_alt_outlined),
              SizedBox(width: 8),
              IconButton(
                  visualDensity: VisualDensity.standard,
                  onPressed: () {
                    print("toggle menu");
                  },
                  icon: Icon(Icons.menu))
            ],
          )
        ],
      ),
    );
  }
}
