import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:poke_app/model/poke_model.dart';
import 'package:poke_app/repository/i_poke_repository.dart';

class PokeApiRepository implements IPokeRepository {
  @override
  Future<List<PokeModel>> findAllPoke() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon');
    final response = await http.get(url);
    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);
    return responseMap
        .map<PokeModel>((resp) => PokeModel.fromMap(resp))
        .toList();
  }
}
