import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poke_app/utils/common.dart';
import 'package:poke_app/utils/consts.dart';

List<String> items = <String>[
  'Squirtle',
  'Bulbasaur',
  'Charizard',
  'Pikachu',
  'Kadabra',
  'Alakazam',
  'Gastly',
  'Rattata',
  'Caterpie'
];

class HomePage extends StatefulWidget {
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

    Iterable<Widget> listTiles =
        items.map((String items) => buildListTile(context, items));

    return Scaffold(
      backgroundColor: AppConsts.primaryColor,
      body: Scrollbar(
        child: ListView(
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: listTiles.toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffffba08),
        child: Icon(Icons.search),
      ),
    );
  }
}

Widget buildListTile(BuildContext context, String item) {
  // Widget secondary = const Text(
  //   'Texto Secundário'
  // );

  return MergeSemantics(
    child: ListTile(
      title: Padding(
        padding: EdgeInsets.all(setHeight(2.0)),
        child: Container(
          padding: EdgeInsets.all(setHeight(2.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.person_add_alt_1_outlined,
                color: AppConsts.secundaryColor,
                size: setHeight(100),
              ),
            ],
          ),
          color: Colors.white,
          width: setWidth(100),
          height: setHeight(100),

          //text: Text($item[0]),   // Aparece os nome dos pokemon que estão em uma lista.
          //subtitle: secondary,  Uma desciçã.
        ),
      ),
    ),
  );
}
