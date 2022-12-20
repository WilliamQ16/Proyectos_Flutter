import 'package:flutter/material.dart';

var drawerTextColor = TextStyle(
  color: Colors.white,
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

var myDrawer = Drawer(
  backgroundColor: Colors.redAccent,
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.restaurant,
          size: 64,
          color: Colors.white,
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