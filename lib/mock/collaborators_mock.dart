import 'package:alo_simulator/enums/stack_enum.dart';
import 'package:alo_simulator/models/stack.dart';
import 'package:alo_simulator/models/user.dart';

class CollaboratorsMock {
  List<User> mockList = [
    User(
        id: '1',
        fullName: 'Renato Andrade',
        photo: 'https://github.com/RNTOpus.png',
        salary: 4000,
        job: 'Developer',
        supervisor: 'Marcos',
        knowledge: Stack(frontend: [
          FrontendStack(name: FrontendStackEnum.html, level: 4),
          FrontendStack(name: FrontendStackEnum.css, level: 4),
          FrontendStack(name: FrontendStackEnum.javascript, level: 3)
        ], backend: [
          BackendStack(name: BackendStackEnum.node, level: 2)
        ])),
    User(
        id: '2',
        fullName: 'Paulo T Jr',
        photo: 'https://github.com/PauloRTesJr.png',
        salary: 5000,
        job: 'Developer',
        supervisor: 'Marcos',
        knowledge: Stack(frontend: [
          FrontendStack(name: FrontendStackEnum.html, level: 4),
          FrontendStack(name: FrontendStackEnum.css, level: 4),
          FrontendStack(name: FrontendStackEnum.javascript, level: 3)
        ], backend: [
          BackendStack(name: BackendStackEnum.node, level: 2)
        ])),
  ];
}
