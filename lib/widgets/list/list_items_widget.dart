import 'package:flutter/material.dart';

class ListItemsPokemons extends StatefulWidget {
  const ListItemsPokemons({Key key}) : super(key: key);

  @override
  _ListItemsPokemonsState createState() => _ListItemsPokemonsState();
}

class _ListItemsPokemonsState extends State<ListItemsPokemons> {
  // Criando a lista de pokemons aqui
  List<String> listItemsPokemons = [
    'Squirtle',
    'Bulbasaur',
    'Charizard',
    'Pikachu',
    'Kadabra',
    'Alakazam',
    'Gastly',
    'Rattata',
    'Caterpie'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // usando o ListView.builder para construir nossa lista de pokemons
        child: ListView.builder(
            itemCount: listItemsPokemons.length,
            itemBuilder: (_, int index) {
              return Text(listItemsPokemons[index]);
            }),
      ),
    );
  }
}
