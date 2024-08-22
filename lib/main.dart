import 'package:flutter/material.dart';
import 'GameBoardScreen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        GameBoardScreen.route:(context) => GameBoardScreen(),
      },
      initialRoute: GameBoardScreen.route,
    );
  }
}