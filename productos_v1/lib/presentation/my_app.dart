import 'package:flutter/material.dart';
import 'items_list_screen.dart' show ItemsListScreen;

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Paginator 2.0',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const ItemsListScreen(),
    );
  }
}