import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/list/list_items_widget.dart';
import 'package:poke_app/widgets/search/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Responsividade
    AppConsts.setWidthSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.width);

    return Scaffold(
      body: ListItemsPokemons(),
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
    );
  }
}
