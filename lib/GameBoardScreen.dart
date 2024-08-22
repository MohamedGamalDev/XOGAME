import 'package:flutter/material.dart';
class GameBoardScreen extends StatefulWidget {
  static const String route='GameBoardScreen';
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}
class _GameBoardScreenState extends State<GameBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300.withOpacity(.7),
      body: SafeArea(

        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('Player 1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text('0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('Player 2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text('0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}