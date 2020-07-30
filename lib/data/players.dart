import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PlayerState extends ChangeNotifier {
  /// player's properties....
  String player1 = "Player 1";
  String player2 = "Player 2";
  int player1Score = 0;
  int player2Score = 0;

  /// game properties....
  String turnOfPlayer = "Player 1";

  String playerWin = "";

  /// value 1 = 'X' and 2 = 'O'
  int box1 = 0;
  int box2 = 0;
  int box3 = 0;
  int box4 = 0;
  int box5 = 0;
  int box6 = 0;
  int box7 = 0;
  int box8 = 0;
  int box9 = 0;

  /// Game Themes Properties....
  Color appBarTextColor = Colors.white;
  Color gameBackground = Colors.grey[800];
  Color buttonTextColor = Colors.black;
  Color gameTextColor = Colors.white;
  Color gameTextColor2 = Colors.lightGreen[200];
  Color buttonColor = Colors.lightBlue;

  /// change theme of the game...
  changeTheme(
      {Color appbartext,
      Color gameBackgroundColor,
      Color buttonText,
      Color gameText,
      Color gameText2,
      Color button}) {
    appBarTextColor = appbartext;
    gameBackground = gameBackgroundColor;
    buttonColor = button;
    gameTextColor = gameText;
    gameTextColor2 = gameText2;
    buttonTextColor = buttonText;
    notifyListeners();
  }

  /// reset the game.. and replay...
  void replayGame() {
    box1 = box2 = box3 = box4 = box5 = box6 = box7 = box8 = box9 = 0;
    playerWin = "";
    notifyListeners();
  }

  void goBackGame() {
    box1 = box2 = box3 = box4 = box5 = box6 = box7 = box8 = box9 = 0;
    playerWin = "";
    player1Score = 0;
    player2Score = 0;
    notifyListeners();
  }

  /// check for the winner of the game...
  void checkWinner() {
    if (box1 == 1 && box2 == 1 && box3 == 1 ||
        box4 == 1 && box5 == 1 && box6 == 1 ||
        box7 == 1 && box8 == 1 && box9 == 1 ||
        box1 == 1 && box5 == 1 && box9 == 1 ||
        box3 == 1 && box5 == 1 && box7 == 1 ||
        box1 == 1 && box4 == 1 && box7 == 1 ||
        box2 == 1 && box5 == 1 && box8 == 1 ||
        box3 == 1 && box6 == 1 && box9 == 1) {
      playerWin = player1;
      player1Score += 1;
      box1 = box2 = box3 = box4 = box5 = box6 = box7 = box8 = box9 = 3;
    } else if (box1 == 2 && box2 == 2 && box3 == 2 ||
        box4 == 2 && box5 == 2 && box6 == 2 ||
        box7 == 2 && box8 == 2 && box9 == 2 ||
        box1 == 2 && box5 == 2 && box9 == 2 ||
        box3 == 2 && box5 == 2 && box7 == 2 ||
        box1 == 2 && box4 == 2 && box7 == 2 ||
        box2 == 2 && box5 == 2 && box8 == 2 ||
        box3 == 2 && box6 == 2 && box9 == 2) {
      playerWin = player2;
      player2Score += 1;
      box1 = box2 = box3 = box4 = box5 = box6 = box7 = box8 = box9 = 3;
    } else if (box1 != 0 &&
        box2 != 0 &&
        box3 != 0 &&
        box4 != 0 &&
        box5 != 0 &&
        box6 != 0 &&
        box7 != 0 &&
        box8 != 0 &&
        box9 != 0) {
      playerWin = "No one";
      box1 = box2 = box3 = box4 = box5 = box6 = box7 = box8 = box9 = 3;
    }
    notifyListeners();
  }

  /// set the 'O' or 'X' in the box....
  setBoxValue({@required int boxNumber, @required int boxValue}) {
    if (boxNumber == 1) {
      box1 = boxValue;
    }
    if (boxNumber == 2) {
      box2 = boxValue;
    }
    if (boxNumber == 3) {
      box3 = boxValue;
    }
    if (boxNumber == 4) {
      box4 = boxValue;
    }
    if (boxNumber == 5) {
      box5 = boxValue;
    }
    if (boxNumber == 6) {
      box6 = boxValue;
    }
    if (boxNumber == 7) {
      box7 = boxValue;
    }
    if (boxNumber == 8) {
      box8 = boxValue;
    }
    if (boxNumber == 9) {
      box9 = boxValue;
    }
    notifyListeners();
  }

  /// change Turn of the player...
  void changeTurn() {
    if (turnOfPlayer == player1) {
      turnOfPlayer = player2;
    } else {
      turnOfPlayer = player1;
    }
    notifyListeners();
  }

  /// set the first turn to the player 1...
  void firstTurn() {
    turnOfPlayer = player1;
    notifyListeners();
  }

  /// set name of the first player...
  void setPlayerOneName(String name) {
    player1 = name;
    notifyListeners();
  }

  /// set name of the second player...
  void setPlayerTwoName(String name) {
    player2 = name;
    notifyListeners();
  }

  /// increase score of first player...
  void player1ScoreIncrease() {
    player1Score += 1;
    notifyListeners();
  }

  /// increase score of second player...
  void player2ScoreIncrease() {
    player2Score += 1;
    notifyListeners();
  }

  /// reset the score of the  both players when reset the game...
  void resetGameScores() {
    player1Score = 0;
    player2Score = 0;
    notifyListeners();
  }
}
