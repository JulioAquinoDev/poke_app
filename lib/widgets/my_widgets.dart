import 'package:flutter/material.dart';
import 'package:poke_app/home/home.dart';
import 'package:poke_app/utils/consts.dart';

class MyWidgetsApp extends StatelessWidget {
  final String tituloAppBar = 'Pokémon App';

  @override
  Widget build(BuildContext context) {
    AppConsts.setWidthSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return MaterialApp(
      title: tituloAppBar,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            tituloAppBar,
            textDirection: TextDirection.ltr,
          ),
        ),
        // Cor de fundo amarelho
        backgroundColor: Color(0xffffba08),
        body: HomePage(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  tituloAppBar,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 35.0,
                  color: Colors.black12,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.red,
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
