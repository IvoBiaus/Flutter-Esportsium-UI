import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/constants/mocked_data.dart';
import 'package:flutteresportsiumui/models/game.dart';
import 'package:flutteresportsiumui/screens/SelectGames/widgets/game_card.dart';
import 'package:flutteresportsiumui/screens/SelectTeams/index.dart';
import 'package:flutteresportsiumui/widgets/gradient_button.dart';

class SelectGames extends StatefulWidget {
  @override
  _SelectGamesState createState() => _SelectGamesState();
}

class _SelectGamesState extends State<SelectGames> {
  Set<Game> _selectedGames = {};

  _addGame(Game game) {
    setState(() {
      _selectedGames.add(game);
    });
  }

  _removeGame(Game game) {
    setState(() {
      _selectedGames.remove(game);
    });
  }

  _redirectToSelectTeams() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectTeams()),
    );
  }

  _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: _goBack,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          FlatButton(
            onPressed: _redirectToSelectTeams,
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select games",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Choose what content you will see in the app!",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: games.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 40,
                  childAspectRatio: 0.6,
                ),
                padding: EdgeInsets.fromLTRB(
                    15, 15, 15, _selectedGames.isNotEmpty ? 90 : 15),
                itemBuilder: (context, index) => GameCard(
                  game: games[index],
                  onSelected: _addGame,
                  onUnselected: _removeGame,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _selectedGames.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: GradientButton(
                onPressed: _redirectToSelectTeams,
                text: 'Accept and continue',
              ),
            )
          : SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
