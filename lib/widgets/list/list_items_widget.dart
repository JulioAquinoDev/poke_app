import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';

class ListItemsPokemons extends StatefulWidget {
  const ListItemsPokemons({Key key}) : super(key: key);

  @override
  _ListItemsPokemonsState createState() => _ListItemsPokemonsState();
}

class _ListItemsPokemonsState extends State<ListItemsPokemons> {
  // Criando a lista de pokemons aqui

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppConsts.primaryColor, body: Container());
    //drawer: DrawerWidget(),
  }
}
