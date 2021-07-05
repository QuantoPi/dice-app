import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dado1 = Random().nextInt(6) + 1;

  int dado2 = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                    child: Image(
                      image: AssetImage('images/dice$dado1.png'),
                    ),
                    onPressed: () {
                      setState(() {
                        dado1 = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                )),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: TextButton(
                          child:
                              Image(image: AssetImage('images/dice$dado2.png')),
                          onPressed: () {
                            setState(() {
                              dado2 = Random().nextInt(6) + 1;
                            });
                          },
                        ))),
              ],
            ),
          ),
          Center(
              child: Expanded(
                  child: Column(
            children: [
              FloatingActionButton(
                child: Text("Tap !"),
                onPressed: () {
                  setState(() {
                    dado1 = Random().nextInt(6) + 1;
                    dado2 = Random().nextInt(6) + 1;
                  });
                },
                backgroundColor: Colors.amber,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    dado1 = Random().nextInt(6) + 1;
                    dado2 = Random().nextInt(6) + 1;
                  });
                },
                icon: const Icon(
                  Icons.gesture_rounded,
                ),
                color: Colors.amber,
                iconSize: 60,
              ),
            ],
          )))
        ],
      ),
    );
  }
}
