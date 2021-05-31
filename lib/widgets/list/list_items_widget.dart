import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';

class ListItemsPokemons extends StatefulWidget {
  const ListItemsPokemons({Key key}) : super(key: key);

  @override
  _ListItemsPokemonsState createState() => _ListItemsPokemonsState();
}

class _ListItemsPokemonsState extends State<ListItemsPokemons> {
  final String titulo = 'Pokémon App';
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
    AppConsts.setWidthSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppConsts.secundaryColor,
          shadowColor: AppConsts.secundaryColor,
          title: Center(
            child: Text(
              titulo,
              textDirection: TextDirection.ltr,
            ),
          ),
      ),
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
      //drawer: DrawerWidget(),
    );
  }
}
