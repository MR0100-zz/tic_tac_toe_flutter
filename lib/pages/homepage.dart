import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter/data/players.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(Icons.data_usage),
                onPressed: () {
                  Navigator.pushNamed(context, 'theme');
                },
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Provider.of<PlayerState>(context).gameBackground,
          elevation: 5.0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'player_select_page');
                },
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                color: Provider.of<PlayerState>(context).buttonColor,
                child: Text('Start Game',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Provider.of<PlayerState>(context).buttonTextColor,
                    )),
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
                  SystemNavigator.pop();
                },
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                color: Provider.of<PlayerState>(context).buttonColor,
                child: Text('Exit Game',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Provider.of<PlayerState>(context).buttonTextColor,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
