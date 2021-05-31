import 'package:flutter/material.dart';
import 'pages/page_view_widget.dart';

class App extends StatelessWidget {
  final String titulo = 'Poke App';

  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Scaffold(
        // Cor de fundo amarelho
        //backgroundColor: AppConsts.primaryColor,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: PageViewWidget(),
        ),
        // drawer: DrawerWidget(),
      ),
    );
  }
}