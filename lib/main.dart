import 'package:flutter/material.dart';
import 'package:game_xo/loginPage.dart';
import 'Button.dart';
import 'GameBoardScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        GameBoardScreen.route:(context) => GameBoardScreen(),
        TxT.route:(context) => TxT(),
      },
      title: 'Game XO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: TxT.route,
    );
  }
}
