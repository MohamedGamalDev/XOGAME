import 'package:flutter/material.dart';
import 'package:game_xo/Button.dart';
import 'Button.dart';
class GameBoardScreen extends StatefulWidget {
  static const String route='GameBoardScreen';
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}
class _GameBoardScreenState extends State<GameBoardScreen> {
  int  currentPlayer=0;
  void onClick(int index) {
    if (values[index] == '') {
      setState(() {
        if (currentPlayer == 0) {
          values[index] = 'x';
          currentPlayer = 10; // Switch to player O
        } else {
          values[index] = 'o';
          currentPlayer = 0; // Switch to player X
        }
      });
    }
  }
  List<String>values=List.generate(9, (index) => '');
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
              ), itemBuilder:(_, index) => ActionButton(value:values[index],action:() => onClick(index)),itemCount: values.length, ))
            // ActionButton(),
          ],
        ),
      ),
    );
  }
}
// if (values[index]=='') {
//   setState(() {
//     values[index] = 'x';
//   });
// }
// else if (values[index-1]=='x')
// {
//   setState(() {
//     values[index] = 'o';
//   });
// }
// else if (values[index-1]=='o')
// {
//   setState(() {
//     values[index] = 'x';
//   });
// }