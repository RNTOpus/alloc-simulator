// ignore: library_prefixes
import 'package:alo_simulator/models/user.dart';
import 'package:flutter/material.dart';

class AllocationData {
  String id;
  String title;
  Color? theme;
  List<UserData> collaborators;

  AllocationData(
      {required this.title,
      required this.id,
      required this.collaborators,
      this.theme});
}
