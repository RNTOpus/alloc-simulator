import 'package:alo_simulator/pages/home.dart';
import 'package:alo_simulator/providers/app_data.dart';
import 'package:alo_simulator/styles/alo_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AloSimulatorApp());
}

class AloSimulatorApp extends StatelessWidget {
  const AloSimulatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'Alo Simulator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Noto Sans',
          scaffoldBackgroundColor: AloColors.background,
        ),
        home: HomePage(),
      ),
    );
  }
}
