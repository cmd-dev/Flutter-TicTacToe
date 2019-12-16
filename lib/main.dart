import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'USer.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Learning()));
}

class Learning extends StatefulWidget {
  _LearningState createState() {
    return _LearningState();
  }
}

class _LearningState extends State<Learning> {
  Color col = Colors.black87;
  Color col2 = Colors.white;
  Game g = Game();
  Game h = Game();
  bool mycolor = true;
  List<int> plays1 = [];
  List<int> plays2 = [];

  bool win(Map<int, bool> data) {
    if (((data[0] == true) && (data[4] == true)) && (data[8] == true)) {
      return true;
    } else if (data[0] == true && data[1] == true && data[[2]] == true) {
      return true;
    } else if (data[3] == true && data[4] == true && data[5] == true) {
      return true;
    } else if (data[6] == true && data[7] == true && data[8] == true) {
      return true;
    } else if (data[0] == true && data[3] == true && data[6] == true) {
      return true;
    } else if (data[1] == true && data[4] == true && data[7] == true) {
      return true;
    } else if (data[2] == true && data[5] == true && data[8] == true) {
      return true;
    } else {
      return false;
    }
  }

  Widget symbol(int e) {
    Widget w;

    if (mycolor) {
      if (g.datam[e] == true)
        w = Icon(Icons.clear,size: 65,);
      else if (h.datam[e] == true) w = Icon(Icons.panorama_fish_eye,size: 60,);
    } else {
      if (g.datam[e] == true)
        w = Icon(Icons.clear,size: 65,);
      else if (h.datam[e] == true) w = Icon(Icons.panorama_fish_eye,size: 60,);
    }
    w ??= Icon(Icons.android,size: 60,);
    return w;
  }

  @override
  Widget build(BuildContext context) {
    var x = mycolor ? g.datam : h.datam;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: AnimatedContainer(
          duration: Duration(seconds: 5),
          color: col,
        ),
        title: Text('Tic-Tac-Toe'),
        backgroundColor: mycolor ? Colors.lightBlueAccent : Colors.greenAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: GridView.count(
              crossAxisCount: 3,
              children: x.keys.map((int e) {
                return Container(
                  margin: EdgeInsets.all(12),
                  child: RaisedButton(
                    onPressed: () {
                      if (mycolor) {
                        print('Player1 turn ended');
                        g.datam[e] = true;
                        if (win(g.datam)) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                'Player 1 WON!!!',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          );
                        }
                        print(win(g.datam).toString());
                      } else {
                        print('Player2 turn ended');
                        h.datam[e] = true;
                        print(win(h.datam).toString());
                        if (win(g.datam)) {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: Text(
                                'Player 2 WON!!!',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          );
                        }
                      }
                      setState(() {
                        col = mycolor ? Colors.cyan : Colors.orange;
                        col2 = mycolor ? Colors.orange : Colors.cyan;
                        mycolor = !mycolor;
                      });

                      /*   //1print(e.toString());
                      plays2.add(e);

                     // print(plays1);
                      print(plays2);
                      process2();*/
                      /*if (g.datam[e] == true) {
                          h.datam[e] = false;
                        } else
                          g.datam[e] = true;*/
                      if (plays1.length == 3) {
                        plays1.clear();
                      }
                      if (plays2.length == 3) {
                        plays2.clear();
                      }
                    },
                    color: mycolor ? Colors.blue : Colors.green,
                    child: Center(
                      child: symbol(e),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                AnimatedContainer(
                  child: Text(
                    'Player1',
                    style: TextStyle(fontSize: 45, color: Colors.grey[600]),
                  ),
                  duration: Duration(seconds: 4),
                  color: col,
                ),
                AnimatedContainer(
                  child: Text(
                    'Player2',
                    style: TextStyle(fontSize: 45, color: Colors.grey[600]),
                  ),
                  duration: Duration(seconds: 4),
                  color: col2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
!mycolor
? g.datam[e]
? Text('Selected by P1')
: Text(e.toString())
: g.datam[e]
? Text('Selected by P2')
: Text(e.toString())),*/
