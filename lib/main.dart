import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String heyThere = 'Hey there';
  final double fontSize = 36.0;
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? generatedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: generatedColor ?? Colors.white,
          child: Center(
            child: Text(
              widget.heyThere,
              style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _changeColor() {
    setState(() {
      generatedColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
}
