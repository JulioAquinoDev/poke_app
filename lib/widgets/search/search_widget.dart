import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/drawer/drawer_widget.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final String titulo = 'Poke App';
  final String pesquisar = 'Pesquise um pokémon';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: pesquisar,
      home: Scaffold(
        // cor de fundo
        backgroundColor: AppConsts.primaryColor,
        appBar: AppBar(
          // cor de fundo do app bar
          backgroundColor: AppConsts.secundaryColor,
          shadowColor: AppConsts.secundaryColor,
          title: Center(
            child: Text(
              titulo,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 55.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: pesquisar,
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // Adicionar um botão para buscar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Implementar aqui funções de buscas
                },
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: AppConsts.secundaryColor,
                ),
                label: Text(
                  "BUSCAR",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppConsts.secundaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
