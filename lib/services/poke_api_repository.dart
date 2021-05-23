import 'dart:convert';

import 'package:http/http.dart' as service;

import 'package:poke_app/model/poke_model.dart';
import 'package:poke_app/repository/i_poke_repository.dart';

class PokeApiRepository implements IPokeRepository {
  @override
  Future<List<PokeModel>> findAllPoke() async {
    final response = await service.get('https://pokeapi.co/api/v2/pokemon/1');
    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);
    responseMap.map<PokeModel>((resp) {
      PokeModel model =
          PokeModel(id: resp['id'] as String, name: resp['name'] as String);
    }).toList();
  }
}
