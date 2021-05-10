import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/drawer/drawer_widget.dart';

class ListItemsPokemons extends StatefulWidget {
  const ListItemsPokemons({Key key}) : super(key: key);

  @override
  _ListItemsPokemonsState createState() => _ListItemsPokemonsState();
}

class _ListItemsPokemonsState extends State<ListItemsPokemons> {
  // Criando a lista de pokemons aqui
  List<String> listItemsPokemons = [
    'Pikachu',
    'Squirtle',
    'Bulbasaur',
    'Charizard',
    'Kadabra',
    'Alakazam',
    'Gastly',
    'Rattata',
    'Caterpie',
    'Ivysaur',
    'Bulbasaur',
    'Charmander',
    'Squirtle',
    'Caterpie',
    'Butterfree',
    'Pidgeotto	',
    'Onix',
    'Pikachu',
    'Squirtle',
    'Bulbasaur',
    'Charizard',
    'Kadabra',
    'Alakazam',
    'Gastly',
    'Rattata',
    'Caterpie',
    'Ivysaur',
    'Bulbasaur',
    'Charmander',
    'Squirtle',
    'Caterpie',
    'Butterfree',
    'Pidgeotto	',
    'Onix',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.primaryColor,
      body: Container(
        // usando o ListView.builder para construir nossa lista de pokemons
        child: ListView.builder(
            itemCount: listItemsPokemons.length,
            itemBuilder: (_, int index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Center(
                  child: Text(
                    listItemsPokemons[index],
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
