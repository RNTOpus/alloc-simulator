import 'package:alo_simulator/models/allocation.dart';
import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  var username = '';
  var password = '';

  final List<AllocationData> allocations = [
    AllocationData(
        title: 'Webzeiros',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(255, 182, 185, .5)),
    AllocationData(
        title: 'Flutterandos',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(182, 227, 255, 0.498)),
    AllocationData(
        title: 'csssin',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(234, 182, 255, 0.498)),
    AllocationData(
        title: 'Javazicas',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(191, 255, 182, 0.494)),
    AllocationData(
        title: 'dots',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(255, 216, 182, 0.494)),
    AllocationData(
        title: 'dockerin',
        id: '',
        collaborators: [],
        theme: Color.fromRGBO(255, 182, 234, 0.49))
  ];
}
