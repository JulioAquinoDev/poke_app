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
}
