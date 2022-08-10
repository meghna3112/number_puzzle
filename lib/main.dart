import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzle(),
  ));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  List num = ['1', '2', '3', '4', '5', '6', '7', '8', ''];
  String winner = '';
  bool click = true;

  win() {
    if (num[0] == '1' &&
        num[1] == '2' &&
        num[2] == '3' &&
        num[3] == '4' &&
        num[4] == '5' &&
        num[5] == '6' &&
        num[6] == '7' &&
        num[7] == '8' &&
        num[8] == '') {
      winner = "You Win the Game";
      click = false;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    num.shuffle();
    print(num);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Puzzle'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[1] == '') {
                                num[1] = num[0];
                                num[0] = '';
                              } else if (num[3] == '') {
                                num[3] = num[0];
                                num[0] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[0]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          border: Border.all(
                              width: 4, color: Colors.lightBlueAccent)),
                    ),
                  ),
                ), //0
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[0] == '') {
                                num[0] = num[1];
                                num[1] = '';
                              } else if (num[4] == '') {
                                num[4] = num[1];
                                num[1] = '';
                              } else if (num[2] == '') {
                                num[2] = num[1];
                                num[1] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[1]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(width: 4, color: Colors.orange)),
                    ),
                  ),
                ), //1
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[1] == '') {
                                num[1] = num[2];
                                num[2] = '';
                              } else if (num[5] == '') {
                                num[5] = num[2];
                                num[2] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[2]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          border: Border.all(width: 4, color: Colors.lime)),
                    ),
                  ),
                ) //2
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[0] == '') {
                                num[0] = num[3];
                                num[3] = '';
                              } else if (num[4] == '') {
                                num[4] = num[3];
                                num[3] = '';
                              } else if (num[6] == '') {
                                num[6] = num[3];
                                num[3] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[3]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border:
                              Border.all(width: 4, color: Colors.indigoAccent)),
                    ),
                  ),
                ), //3
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[1] == '') {
                                num[1] = num[4];
                                num[4] = '';
                              } else if (num[3] == '') {
                                num[3] = num[4];
                                num[4] = '';
                              } else if (num[5] == '') {
                                num[5] = num[4];
                                num[4] = '';
                              } else if (num[7] == '') {
                                num[7] = num[4];
                                num[4] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[4]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.lime,
                          border: Border.all(width: 4, color: Colors.brown)),
                    ),
                  ),
                ), //4
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[2] == '') {
                                num[2] = num[5];
                                num[5] = '';
                              } else if (num[4] == '') {
                                num[4] = num[5];
                                num[5] = '';
                              } else if (num[8] == '') {
                                num[8] = num[5];
                                num[5] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[5]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          border:
                              Border.all(width: 4, color: Colors.amberAccent)),
                    ),
                  ),
                ) //5
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[3] == '') {
                                num[3] = num[6];
                                num[6] = '';
                              } else if (num[7] == '') {
                                num[7] = num[6];
                                num[6] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[6]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          border: Border.all(
                              width: 4, color: Colors.lightBlueAccent)),
                    ),
                  ),
                ), //6
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[4] == '') {
                                num[4] = num[7];
                                num[7] = '';
                              } else if (num[6] == '') {
                                num[6] = num[7];
                                num[7] = '';
                              } else if (num[8] == '') {
                                num[8] = num[7];
                                num[7] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[7]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                              width: 4, color: Colors.deepOrangeAccent)),
                    ),
                  ),
                ), //7
                Expanded(
                  child: InkWell(
                    onTap: click
                        ? () {
                            setState(() {
                              if (num[5] == '') {
                                num[5] = num[8];
                                num[8] = '';
                              } else if (num[7] == '') {
                                num[7] = num[8];
                                num[8] = '';
                              }
                              win();
                            });
                          }
                        : null,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      alignment: Alignment.center,
                      child: Text('${num[8]}',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50)),
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.all(width: 5, color: Colors.brown)),
                    ),
                  ),
                ), //8
              ],
            ),
          ),
          Container(
            child: Text("$winner",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 50)),
            height: 60,
            width: 200,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  num.shuffle();
                  click = true;
                });
              },
              child: Icon(Icons.repeat))
        ],
      ),
    );
  }
}
