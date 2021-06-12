import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';

import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/search/search_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Criando a lista de pokemons aqui
  void pokemonList() async {
    final response = await PokeAPI.getObjectList(1, 1);
    print(response);
  }

  Pokemon pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = new Pokemon();
  }

  @override
  Widget build(BuildContext context) {
    AppConsts.setWidthSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.width);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchWidget()),
          );
        },
        backgroundColor: AppConsts.secundaryColor,
        child: Icon(Icons.search),
      ),
      body: SafeArea(
        child: Scaffold(
          body: FutureBuilder(
              future: http.get(
                "https://pokeapi.co/api/v2/pokemon/1/",
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error);
                  }

                  return ListView.builder(itemBuilder: (context, index) {
                    Pokemon pokemon = new Pokemon();

                    print(pokemon);
                    return ListTile(
                        title: Center(
                      child: Text('${this.pokemon.name}'),
                    ));
                  });
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppConsts.secundaryColor,
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
