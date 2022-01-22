import 'dart:convert';

class Usermodel {
  final int id;
  final String username;
  final String token;
  Usermodel({
    this.id,
    this.username,
    this.token,
  });

  Usermodel copyWith({
    int id,
    String username,
    String token,
  }) {
    return Usermodel(
      id: id ?? this.id,
      username: username ?? this.username,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'token': token,
    };
  }

  factory Usermodel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Usermodel(
      id: map['id']?.toInt(),
      username: map['username'],
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Usermodel.fromJson(String source) =>
      Usermodel.fromMap(json.decode(source));

  @override
  String toString() => 'Usermodel(id: $id, username: $username, token: $token)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Usermodel &&
        o.id == id &&
        o.username == username &&
        o.token == token;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ token.hashCode;
}
