import 'package:flutter/material.dart';
import 'package:poke_app/utils/common.dart';

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
    Iterable<Widget> listTiles =
        items.map((String items) => buildListTile(context, items));

    return Scaffold(
      backgroundColor: Color(0xffffba08),
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

  return new MergeSemantics(
      child: new ListTile(
    title: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/Pokebola.png',
              width: setWidth(120.0),
              height: setHeight(80.0),
            ),
          ],
        ),
        color: Colors.white,
        width: setWidth(160.0),
        height: setHeight(90.0),
        //text: Text('$item'),   Aparece os nome dos pokemon que estão em uma lista.
        //subtitle: secondary,  Uma desciçã.
      ),
    ),
  ));
}
