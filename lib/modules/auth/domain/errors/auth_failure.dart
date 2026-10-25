enum AuthFailureType {
  invalidCredentials,
  profileNotFound,
  accessDenied,
  network,
  unexpected,
}

class AuthFailure implements Exception {
  const AuthFailure(this.type);

  final AuthFailureType type;

  @override
  String toString() => 'AuthFailure: ${type.name}';
}
