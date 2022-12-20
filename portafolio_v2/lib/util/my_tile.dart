import 'dart:html';

import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int number;
  List myList = [
    "Mango",
    "Mora",
    "Brócoli",
    "Papa",
    "Plátano Maduro",
    "Cebolla Roja",
    "Arveja",
    "Lulo",
    "Huevos",
    "Carne de Cadera"
  ];

  MyTile({Key? key, required this.number}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: ListTile(
          leading: Image.asset("../images/mic${number + 1}.jpg"),
          title: Text(myList[number]),
          trailing: TextButton(
            child: Text("Ver Más >>"),
            onPressed: (() {}),
          ),
        ),
      ),
    );
  }
}
