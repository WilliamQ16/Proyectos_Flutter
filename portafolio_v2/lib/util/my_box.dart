import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  final int number;

  const MyBox({Key? key, required this.number}) : super(key: key);

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage("../images/pic${number+2}.jpg"),
          ),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}