import 'package:flutter/material.dart';
import 'package:game_xo/Button.dart';
import 'Button.dart';
class GameBoardScreen extends StatefulWidget {
  static const String route='GameBoardScreen';
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}
class _GameBoardScreenState extends State<GameBoardScreen> {
  void OnClick()
  {}
  List<String>values=[
    'x','o','x',
    'o','x','o',
    '','','x',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *.1,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Player 1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      Text('0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Player 2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      Text('0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child:
            GridView.builder
              (physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,crossAxisSpacing: 4,mainAxisSpacing: 4,mainAxisExtent:MediaQuery.of(context).size.height *.283,
              ), itemBuilder:(_, index) => ActionButton(value:values[index],action:OnClick),itemCount: values.length, ))
            // ActionButton(),
          ],
        ),
      ),
    );
  }
}
