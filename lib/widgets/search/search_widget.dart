import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final String titulo = 'Poke App';
  final String pesquisar = 'Pesquisar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: pesquisar,
      home: Scaffold(
        backgroundColor: AppConsts.primaryColor,
        appBar: AppBar(
          backgroundColor: AppConsts.secundaryColor,
          shadowColor: AppConsts.secundaryColor,
          title: Text(
            titulo,
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 26.0, vertical: 250.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: pesquisar,
                  ),
                ),
              ),
              // Adicionar um botão para buscar
              Container(
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16.0,
                      ),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Implementar aqui função de buscas
                        },
                        icon: Icon(
                          Icons.search,
                          size: 25,
                        ),
                        label: Text(
                          "PESQUISAR",
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
