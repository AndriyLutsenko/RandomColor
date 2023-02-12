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

  // @override
  // void initState() {
  //   super.initState();
  //   pageColor = const Color.fromARGB(255, 255, 255, 255);
  //   textColor = const Color.fromARGB(255, 0, 0, 0);
  // }

  int randomNumber(int num) {
    var random = Random();
    int randomNumber = random.nextInt(num);
    // print(randomNumber);
    return randomNumber;
  }

  void randomPageColor() {
    setState(() {
      pageColor = Color.fromARGB(
          255, randomNumber(256), randomNumber(256), randomNumber(256));
    });
  }

  void randomTextColor() {
    setState(() {
      textColor = Color.fromARGB(
          255, randomNumber(256), randomNumber(256), randomNumber(256));
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
