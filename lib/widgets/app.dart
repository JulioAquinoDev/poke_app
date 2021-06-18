import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'home/home_page.dart';

class App extends StatelessWidget {
  final String titulo = 'Poke App';

  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      home: Scaffold(
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
        // Cor de fundo amarelho
        backgroundColor: AppConsts.primaryColor,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
          child: HomePage(),
        ),
        // drawer: DrawerWidget(),
      ),
    );
  }
}