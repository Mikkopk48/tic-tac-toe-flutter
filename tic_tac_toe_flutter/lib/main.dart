import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/screens/game_screen.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      home: HomeScreen(),
    );
  }
}
