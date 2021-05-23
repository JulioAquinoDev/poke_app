import 'dart:convert';

class PokeType {
  String id;
  String name;

  PokeType({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory PokeType.fromMap(Map<String, dynamic> map) {
    return PokeType(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeType.fromJson(String source) =>
      PokeType.fromMap(json.decode(source));
}
