import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/drawer/drawer_widget.dart';

class DetailsWidget extends StatefulWidget {
  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  final String titulo = 'Pokémon App';
  final String details = 'Detalhes';

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: details,
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
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top:20.0,
                  left:20.0,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Colors.grey,
                            offset: Offset(2,4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 36.0,
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text("Pokébola",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.grey,
                            offset: Offset(5,5),
                          ),
                        ],
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top:20.0,
                ),
                child: Stack(
                  children: [
                    // Container detalhes
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 125.0,
                        ),
                        width: 398.0,
                        height: 438.0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 150.0,  
                          ),
                          child: Text(
                            "Detalhes do Pokémon",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ], 
                        ),
                      ),
                    ),
                    // Container pokébola
                    Center(
                      child: Container(
                        width: 250.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(150.0),
                          ),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(1, 8),
                            ),
                          ],
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/img/Pokebola.png",
                            ),
                          ),                        
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppConsts.primaryColor,
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 36.0,
          ),
        ),
        drawer: DrawerWidget(),
      ),
    );    
  }
}