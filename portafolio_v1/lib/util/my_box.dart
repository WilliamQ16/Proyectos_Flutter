import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  const MyBox({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}