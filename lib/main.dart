import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SHABEHNE | شبهني",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigo[600],
      ),
      body: const ImagesPage(),
    ),
  ));
}

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  int x = 1, y = 2;

  void randomNumber() {
    x = Random().nextInt(8) + 1;
    y = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          x == y ? 'You Won' : "Try Again",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: x == y ? Colors.white : Colors.red,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset(
                  "Images/image-$x.png",
                  width: 180,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset(
                  "Images/image-$y.png",
                  width: 180,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
