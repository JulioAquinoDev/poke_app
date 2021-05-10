import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
<<<<<<< HEAD
import 'package:poke_app/widgets/search/search_widget.dart';
=======
>>>>>>> 440c5df726ff1ff1a5d048e1f3987122e9140a98

import 'pages/page_view_widget.dart';

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
          title: Center(
            child: Text(
              titulo,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        // Cor de fundo amarelho
        backgroundColor: AppConsts.primaryColor,
<<<<<<< HEAD
        body: SearchWidget(),
        drawer: DrawerWidget(),
=======
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
          child: PageViewWidget(),
        ),
        // drawer: DrawerWidget(),
>>>>>>> 440c5df726ff1ff1a5d048e1f3987122e9140a98
      ),
    );
  }
}