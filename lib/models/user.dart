import 'package:alo_simulator/models/stack.dart';

class User {
  String id;
  String fullName;
  String photo;
  String? job;
  int? salary;
  String? supervisor;
  Stack? knowledge;

  User(
      {required this.id,
      required this.fullName,
      required this.photo,
      this.job,
      this.salary,
      this.supervisor,
      this.knowledge});
}
