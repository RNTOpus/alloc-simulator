class AuthRequest {
  String username;
  String password;

  AuthRequest(
    this.username,
    this.password,
  );

  Map toJson() => {"username": username, "password": password};
}
