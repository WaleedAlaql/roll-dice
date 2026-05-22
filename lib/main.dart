import 'package:flutter/material.dart';

void main() {
  runApp(RollDice());
}

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.deepOrange],
            ),
          ),
          child: Center(
            child: Text("Hello There!"),
          ),
        ),
      ),
    );
  }
}
