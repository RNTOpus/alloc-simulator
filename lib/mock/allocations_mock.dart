import 'package:alo_simulator/mock/collaborators_mock.dart';
import 'package:alo_simulator/models/allocation.dart';
import 'package:flutter/material.dart';

class AllocationsMock {
  List<Allocation> mockList = [
    Allocation(
        title: 'Webzeiros',
        id: '1',
        collaborators: CollaboratorsMock().mockList,
        theme: Color.fromRGBO(255, 182, 185, .5)),
    Allocation(
        title: 'Flutterandos',
        id: '2',
        collaborators: [],
        theme: Color.fromRGBO(182, 227, 255, 0.498)),
  ];
}
