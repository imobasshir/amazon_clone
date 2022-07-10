import 'dart:convert';

class Secrets {
  final String myip;
  Secrets({
    required this.myip,
  });

  Map<String, dynamic> toMap() {
    return {
      'myip': myip,
    };
  }

  factory Secrets.fromMap(Map<String, dynamic> map) {
    return Secrets(
      myip: map['myip'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Secrets.fromJson(String source) => Secrets.fromMap(json.decode(source));
}
