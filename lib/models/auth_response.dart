class AuthResponse {
  final String userId;
  final String avatar;
  final String name;

  const AuthResponse(
      {required this.userId, required this.avatar, required this.name});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
        userId: json['userId'], avatar: json['avatar'], name: json['name']);
  }
}
