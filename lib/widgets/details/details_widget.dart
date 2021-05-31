import 'package:flutter/material.dart';
import 'package:poke_app/utils/common.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/search/search_widget.dart';

class DetailsWidget extends StatefulWidget {
  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  final String titulo = 'Pokémon App';
  final String details = 'Detalhes';

  @override
  Widget build(BuildContext context) {
    AppConsts.setWidthSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    
    return MaterialApp(
      title: details,
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(
              Icons.close,
              color: Colors.white,
              size: 36.0,
            ), 
            onPressed: () {},
          ),
          backgroundColor: AppConsts.secundaryColor,
          shadowColor: AppConsts.secundaryColor,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children:[
              Text(
              titulo,
              textDirection: TextDirection.ltr,
            ),
            ]
            
          ),
        ),
      
        // ignore: missing_required_param
        backgroundColor: AppConsts.primaryColor,
        body: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container detalhes
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 140.0,
                      ),
                      width: setWidth(350.0),
                      height: setHeight(435.0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 180.0,
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0
                      ),
                      child: Container(
                        width: setWidth(250.0),
                        height: setHeight(250.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: setWidth(7.0),
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
                  ),
                ],
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchWidget()),
            );
          },
          backgroundColor: AppConsts.secundaryColor,
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 36.0,
          ),
        ),
        //endDrawer: DrawerWidget(),
      ),
    );
  }
}