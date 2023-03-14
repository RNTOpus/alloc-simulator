class UserData {
  String id;
  String fullName;
  String photo;
  String? job;
  String? salary;
  String? supervisor;

  UserData(
      {required this.id,
      required this.fullName,
      required this.photo,
      this.job,
      this.salary,
      this.supervisor});
}
