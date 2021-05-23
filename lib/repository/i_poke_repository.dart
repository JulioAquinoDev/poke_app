import 'package:poke_app/model/poke_model.dart';

abstract class IPokeRepository {
  Future<List<PokeModel>> findAllPoke();
}
