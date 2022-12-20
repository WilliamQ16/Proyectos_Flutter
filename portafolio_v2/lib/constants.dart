import 'package:flutter/material.dart';

var tileTextColor = TextStyle(
  color: Colors.white,
);
var defaultBackgroundColor = Colors.green[300];
var appBarColor = Colors.green[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: ListTile(
    leading: Icon(Icons.agriculture, color: Colors.white,),
    title: Text("Mi Placita", style: tileTextColor,),
  ),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.pink[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("../images/pic1.jpg"),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);


