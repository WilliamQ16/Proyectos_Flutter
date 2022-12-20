import 'package:flutter/material.dart';
import 'random_words.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Generador de Palabras',
      home: RandomWords(),
    );
  }
}