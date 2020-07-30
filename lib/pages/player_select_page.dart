import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/data/players.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class PlayerSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController player1NameController = TextEditingController();
    TextEditingController player2NameController = TextEditingController();

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
        body: ListView(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Text(
              'Name Of Player1',
              style: TextStyle(
                color: Provider.of<PlayerState>(context).gameTextColor,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              autovalidate: true,
              validator: (value) {
                if (value.length == 0) {
                  return "Please Enter the name";
                }
                return "";
              },
              controller: player1NameController,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Name Of Player2',
              style: TextStyle(
                color: Provider.of<PlayerState>(context).gameTextColor,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: player2NameController,
              autovalidate: true,
              validator: (value) {
                if (value.length == 0) {
                  return "Please Enter the name";
                }
                if (value == player1NameController.text) {
                  return "Both Players can not have same name";
                }
                return "";
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              onPressed: () {
                SystemChannels.textInput.invokeMethod('TextInput.hide');
                Provider.of<PlayerState>(context, listen: false)
                    .setPlayerOneName(
                        player1NameController.value.text.toString());
                Provider.of<PlayerState>(context, listen: false)
                    .setPlayerTwoName(
                        player2NameController.value.text.toString());
                Provider.of<PlayerState>(context, listen: false).firstTurn();
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pushNamed(context, 'game_board');
              },
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              color: Provider.of<PlayerState>(context).buttonColor,
              child: Text('Confirm',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Provider.of<PlayerState>(context).buttonTextColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
