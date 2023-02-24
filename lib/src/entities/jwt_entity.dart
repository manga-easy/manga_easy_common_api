class JwtEntity {
  String userId;
  String sessionId;
  int exp;

  JwtEntity(
    this.exp,
    this.sessionId,
    this.userId,
  );
  @override
  String toString() {
    return 'exp: $exp\n userId: $userId\n sessionId: $sessionId\n';
  }
}
