import 'package:dice_app/pages/dice.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
            child: Text(
              'Dice App',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Dice App')),
        ),
        body: Center(
          child: Container(
            child:null,
          ),
        ),
      ),
    );
  }
}

*/