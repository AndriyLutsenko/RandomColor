import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Color? pageColor;
  Color? textColor;

  void randomPageColor() {
    setState(() {
      pageColor = Color.fromARGB(
          255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256));
    });
  }

  void randomTextColor() {
    setState(() {
      textColor = Color.fromARGB(
          255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        randomPageColor();
        randomTextColor();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Test from Victor',
          ),
          titleTextStyle: TextStyle(color: pageColor, fontSize: 10),
          backgroundColor: Colors.black,
        ),
        backgroundColor: pageColor,
        body: Center(
          child: Text(
            'Привіт світ !',
            style: TextStyle(color: textColor, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
