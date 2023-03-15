import 'package:alo_simulator/enums/stack_enum.dart';

class FrontendStack {
  FrontendStackEnum name;
  int level;

  FrontendStack({required this.name, required this.level});
}

class BackendStack {
  BackendStackEnum name;
  int level;

  BackendStack({required this.name, required this.level});
}

class Stack {
  List<FrontendStack>? frontend;
  List<BackendStack>? backend;

  Stack({this.frontend, this.backend});
}
