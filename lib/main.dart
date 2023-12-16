// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, unnecessary_import
// Mitch / UI ----> 40.54
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'CodeMinds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 71, 71),
      appBar: AppBar(
          title: Text(widget.title),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                size: 24,
              ),
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 112, 157, 195),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 37, 88, 130),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 2, 19, 33),
            ),
          )
        ],
      ),
    );
  }
}
