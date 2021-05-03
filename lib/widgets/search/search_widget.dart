import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/drawer/drawer_widget.dart';

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(gapPadding: 8.0),
                  hintText: pesquisar,
                  icon: Icon(Icons.search),
                  // Adicionar um botão para buscar
                ),
              ),
            ),
          ],
        ),
        drawer: DrawerWidget(),
      ),
    );
  }
}
