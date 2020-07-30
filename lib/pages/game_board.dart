import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/data/players.dart';
import 'package:provider/provider.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width - 150;
    double boardHeight = MediaQuery.of(context).size.width - 150;
    return SafeArea(
      minimum: EdgeInsets.only(top: 50),
      child: Scaffold(
        backgroundColor: Provider.of<PlayerState>(context).gameBackground,
        appBar: AppBar(
          title: Text(
            'Tic Tac Toe',
            style: TextStyle(
                fontSize: 30.0,
                color: Provider.of<PlayerState>(context).appBarTextColor),
          ),
          centerTitle: true,
          backgroundColor: Provider.of<PlayerState>(context).gameBackground,
          elevation: 5.0,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "${Provider.of<PlayerState>(context).player1} Score : ${Provider.of<PlayerState>(context).player1Score}",
                    style: TextStyle(
                      color: Provider.of<PlayerState>(context).gameTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "${Provider.of<PlayerState>(context).player2} Score : ${Provider.of<PlayerState>(context).player2Score}",
                    style: TextStyle(
                      color: Provider.of<PlayerState>(context).gameTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "${Provider.of<PlayerState>(context).turnOfPlayer}'s turn",
              style: TextStyle(
                color: Provider.of<PlayerState>(context).gameTextColor2,
                fontSize: 18.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Container(
                height: boardHeight + 4,
                width: boardWidth + 4,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Provider.of<PlayerState>(context).buttonColor,
                      width: 2.0),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box1 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 1,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box1 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box1 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box2 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 2,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box2 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box2 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box3 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 3,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                             height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box3 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box3 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box4 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 4,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box4 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box4 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box5 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 5,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box5 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box5 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box6 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 6,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                             height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box6 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box6 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box7 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 7,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                             height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box7 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box7 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box8 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 8,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box8 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box8 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: Provider.of<PlayerState>(context).box9 == 0
                              ? () {
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .setBoxValue(
                                          boxNumber: 9,
                                          boxValue: Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .turnOfPlayer ==
                                                  Provider.of<PlayerState>(
                                                          context,
                                                          listen: false)
                                                      .player1
                                              ? 1
                                              : 2);
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .changeTurn();
                                  Provider.of<PlayerState>(context,
                                          listen: false)
                                      .checkWinner();
                                }
                              : null,
                          child: Container(
                            height: boardHeight / 3,
                            width: boardHeight / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Provider.of<PlayerState>(context)
                                      .buttonColor,
                                  width: 2.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                                Provider.of<PlayerState>(context).box9 == 1
                                    ? 'X'
                                    : Provider.of<PlayerState>(context).box9 ==
                                            2
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                  color: Provider.of<PlayerState>(context)
                                      .gameTextColor,
                                  fontSize: 40.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                Provider.of<PlayerState>(context).playerWin != ""
                    ? "${Provider.of<PlayerState>(context).playerWin} is winner"
                    : "",
                style: TextStyle(
                    color: Provider.of<PlayerState>(context).gameTextColor,
                    fontSize: 25.0),
              ),
            ),
            Provider.of<PlayerState>(context).playerWin != ""
                ? Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Provider.of<PlayerState>(context, listen: false)
                                .replayGame();
                          },
                          child: Icon(Icons.refresh,
                              size: 30.0,
                              color: Provider.of<PlayerState>(context)
                                  .buttonTextColor),
                          color: Provider.of<PlayerState>(context).buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Provider.of<PlayerState>(context, listen: false)
                                .goBackGame();
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/homepage');
                          },
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                              color: Provider.of<PlayerState>(context)
                                  .buttonTextColor,
                              fontSize: 18.0,
                            ),
                          ),
                          color: Provider.of<PlayerState>(context).buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
