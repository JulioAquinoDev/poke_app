import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/home/home.dart';

class App extends StatelessWidget {
  final String titulo = 'Pokémon App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppConsts.secundaryColor,
          shadowColor: AppConsts.secundaryColor,
          title: Text(
            titulo,
            textDirection: TextDirection.ltr,
          ),
        ),
        // Cor de fundo amarelho
        backgroundColor: AppConsts.primaryColor,
        body: HomePage(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: AppColors.white,
                  ),
                ),
                decoration: BoxDecoration(color: AppConsts.secundaryColor),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 35.0,
                  color: AppColors.black,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: AppColors.black,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
