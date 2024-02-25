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
  int wonCounter = 0, numberOfTry = 0;

  void cheker() {
    if (x == y) {
      wonCounter++;
    } else {
      numberOfTry++;
    }
  }

  void randomNumber() {
    x = Random().nextInt(8) + 1;
    y = Random().nextInt(8) + 1;
    cheker();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              x == y ? 'You Won' : "Try Again",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: x == y ? Colors.white : Colors.red,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Number of wins: $wonCounter",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Text(
              "Number of try: $numberOfTry",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Ratio Of wining: ${(numberOfTry == 0 || wonCounter == 0 ? "0" : (wonCounter.toDouble() / numberOfTry.toDouble() * 100).toStringAsFixed(2))}%",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
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
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.pinkAccent),
          onPressed: (numberOfTry == 0 && wonCounter == 0)
              ? null
              : () {
                  setState(() {
                    numberOfTry = 0;
                    wonCounter = 0;
                  });
                },
          child: Text(
            numberOfTry == 0 && wonCounter == 0
                ? "You Must Play First"
                : "Reset All Try And Wins",
            style: TextStyle(
                fontSize: 20,
                color: numberOfTry == 0 && wonCounter == 0
                    ? Colors.black
                    : Colors.white),
          ),
        ),
      ],
    );
  }
}
