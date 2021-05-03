import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/utils/consts.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({Key key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final String titulo = "Poke App";

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: AppColors.white,
                ),
              ),
              decoration: BoxDecoration(color: AppConsts.secundaryColor),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 35.0,
                color: AppColors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: AppColors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
