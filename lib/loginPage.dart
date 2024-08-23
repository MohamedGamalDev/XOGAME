import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'GameBoardScreen.dart';
class TxT extends StatefulWidget
{  static const String route = 'TxT';
  @override
  State<TxT> createState() => _TxTState();
}

class _TxTState extends State<TxT> {
  TextEditingController NameOfPlayer1 =TextEditingController();
  TextEditingController NameOfPlayer2 =TextEditingController();
  @override
  Widget build(BuildContext)
  {
    return Scaffold(
appBar: AppBar(centerTitle: true,
  title: Text('XO Game',style: TextStyle(fontSize: 35)),
),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: NameOfPlayer1,
              decoration: InputDecoration(filled: true
              ,fillColor: Colors.white,hintText: 'The name of player 1'
              ),
            ),
          ),
           SizedBox( height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: NameOfPlayer2,
              decoration: InputDecoration(filled: true
                  ,fillColor: Colors.white,hintText: 'The name of player 2'
              ),
            ),
          ),
          SizedBox( height: 25),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context,  GameBoardScreen.route,
          arguments: data(player1: NameOfPlayer1.text, player2:NameOfPlayer2.text )
          ), child: Text('Submit',style: TextStyle(fontSize: 22)))
        ],
      ),
    );
  }
}
class data
{
  String player1;
  String player2;
  data({required this.player1,required this.player2});
}