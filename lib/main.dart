import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}



class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var dicenumber = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green.shade900,
                ),
                onPressed: (){
                  setState(() {
                    print('$dicenumber Button Press');
                    dicenumber =Random().nextInt(6)+1;
                  });

                },
                child: Image.asset('images/dices$dicenumber.png')
            ),
          )
        ],
      ),
    );
  }
}


