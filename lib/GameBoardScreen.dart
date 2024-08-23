import 'package:flutter/material.dart';
import 'package:game_xo/Button.dart';
import 'package:game_xo/Reload.dart';
class GameBoardScreen extends StatefulWidget {
  static const String route='GameBoardScreen';
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}
class _GameBoardScreenState extends State<GameBoardScreen> {
  int x=0;
  int o=0;
  void returnZero() {
    setState(() {
      x = 0;
      o = 0;
      values = List.generate(9, (index) => ''); // إعادة تعيين اللوحة
    });
  }
  int  currentPlayer=1;
  void onClick(int index) {
    if (values[index] == '') {
      setState(() {
        if (currentPlayer % 2 != 0) {
          values[index] = 'x';
          whoWin('x');
            // Player X wins, reset the game or take necessary actions

          currentPlayer++;
        } else {
          values[index] = 'o';
          whoWin('o');
            // Player O wins, reset the game or take necessary actions
          currentPlayer++;
        }
      });
    }
  }
  bool whoWin(String sample) {
    if ((values[0] == sample && values[1] == sample && values[2] == sample) || // الصف الأول
        (values[3] == sample && values[4] == sample && values[5] == sample) || // الصف الثاني
        (values[6] == sample && values[7] == sample && values[8] == sample) || // الصف الثالث
        (values[0] == sample && values[3] == sample && values[6] == sample) || // العمود الأول
        (values[1] == sample && values[4] == sample && values[7] == sample) || // العمود الثاني
        (values[2] == sample && values[5] == sample && values[8] == sample) || // العمود الثالث
        (values[0] == sample && values[4] == sample && values[8] == sample) || // القطر من اليسار إلى اليمين
        (values[2] == sample && values[4] == sample && values[6] == sample)) { // القطر من اليمين إلى اليسار
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Player $sample wins!')));
      if (sample=='x')
        {
          x++;
        }
      if (sample=='o')
      {
        o++;
      }
      setState(() {
     for(int i=0;i<values.length;i++)
       {
         values[i]='';
       }
      });
      return true;

    }
    return false;
  }

  List<String>values=List.generate(9, (index) => '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height *.08,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Player 1 ( X )',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      Text('$x',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Player 2 ( O )',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      Text('$o',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Reload(Back:returnZero),
            SizedBox(height: 10,),
            Expanded(child:
            GridView.builder
              (physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,crossAxisSpacing: 4,mainAxisSpacing: 4,mainAxisExtent:MediaQuery.of(context).size.height *.27,
              ), itemBuilder:(_, index) => ActionButton(value:values[index],action:() => onClick(index)),itemCount: values.length,
            )
            )
          ],
        ),
      ),
    );
  }
}
