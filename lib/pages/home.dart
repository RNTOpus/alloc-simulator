import 'package:alo_simulator/widgets/alocattion_list.dart';
import 'package:alo_simulator/widgets/footer.dart';
import 'package:alo_simulator/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Header(),
        AllocationList(),
        Footer(
          text: 'Nova Simulação',
          onPressed: () {},
        )
      ]),
    );
  }
}
