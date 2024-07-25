import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 180, 170),
        appBar: AppBar(
          title: const Text('ROLL-A-DICE'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade700,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              // padding: const EdgeInsets.all(50.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              child: Center(
                child: Text(
                  '$diceNumber',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ),
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                setState(() {
                  diceNumber = Random().nextInt(6) + 1;
                });
              },
              child: const Text('Roll Dice'),              
            ),
            
            const SizedBox(width: 20.0),
          
            ElevatedButton(
              onPressed: (){
                setState(() {
                  diceNumber = 1;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }
}



