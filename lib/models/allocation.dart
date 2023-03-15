// ignore: library_prefixes
import 'package:alo_simulator/models/cost.dart';
import 'package:alo_simulator/models/period.dart';
import 'package:alo_simulator/models/user.dart';
import 'package:flutter/material.dart';

class Allocation {
  String id;
  String title;
  Color? theme;
  Period? period;
  Cost? cost;
  List<User> collaborators;

  Allocation(
      {required this.title,
      required this.id,
      required this.collaborators,
      this.theme,
      this.cost,
      this.period});
}
