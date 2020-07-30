import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/pages/game_board.dart';
import 'package:tic_tac_toe_flutter/pages/homepage.dart';
import 'package:tic_tac_toe_flutter/pages/player_select_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_flutter/pages/theme.dart';

import 'data/players.dart';

void main() => runApp(ZeroCross());

// void main() {
//   // Provider.debugCheckInvalidValueType = null;
//   runApp(ZeroCross());
// }

class ZeroCross extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlayerState(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.purpleAccent,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          String name = settings.name;
          // dynamic args = settings.arguments;

          switch (name) {
            case '/homepage':
              return MaterialPageRoute(builder: (_) => HomePage());
            case 'player_select_page':
              return PageTransition(
                  child: PlayerSelectPage(),
                  type: PageTransitionType.rightToLeft);
            case 'game_board':
              return PageTransition(
                  child: GameBoard(), type: PageTransitionType.rightToLeft);
            case 'theme':
              return PageTransition(
                  child: ThemePage(), type: PageTransitionType.downToUp);
            default:
              return MaterialPageRoute(builder: (_) => HomePage());
          }
        },
      ),
    );
  }
}
