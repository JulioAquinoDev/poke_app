import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/home/home_page.dart';

import 'drawer/drawer_widget.dart';

class App extends StatelessWidget {
  final String titulo = 'Poke App';

  const App({Key key}) : super(key: key);

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
        drawer: DrawerWidget(),
      ),
    );
  }
}
