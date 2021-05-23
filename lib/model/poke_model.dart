import 'dart:convert';

import 'poke_types.dart';

class PokeModel {
  String id;
  String name;
  List<PokeType> types;

  PokeModel({
    this.id,
    this.name,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'types': types?.map((x) => x.toMap())?.toList(),
    };
  }

  factory PokeModel.fromMap(Map<String, dynamic> map) {
    return PokeModel(
      id: map['id'],
      name: map['name'],
      types: List<PokeType>.from(map['types']?.map((x) => PokeType.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeModel.fromJson(String source) =>
      PokeModel.fromMap(json.decode(source));
}
