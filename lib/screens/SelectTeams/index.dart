import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/constants/mocked_data.dart';
import 'package:flutteresportsiumui/models/team.dart';
import 'package:flutteresportsiumui/screens/Matches/index.dart';
import 'package:flutteresportsiumui/widgets/gradient_button.dart';
import './widgets/team_card.dart';

class SelectTeams extends StatefulWidget {
  @override
  _SelectTeamsState createState() => _SelectTeamsState();
}

class _SelectTeamsState extends State<SelectTeams> {
  Set<Team> _selectedTeams = {};
  static const double _topBarHeight = 145;

  void _likeTeam(Team team) {
    setState(() {
      _selectedTeams.add(team);
    });
  }

  void _dislikeTeam(Team team) {
    setState(() {
      _selectedTeams.remove(team);
    });
  }

  void _redirectToMatches() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Matches()),
    );
  }

  void _goBack() {
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
            onPressed: _redirectToMatches,
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.separated(
              itemCount: teams.length,
              separatorBuilder: (context, index) => Divider(
                color: Colors.white30,
              ),
              padding: EdgeInsets.fromLTRB(15, _topBarHeight + 20, 15,
                  _selectedTeams.isNotEmpty ? 90 : 15),
              itemBuilder: (context, index) => TeamCard(
                team: teams[index],
                dislike: _dislikeTeam,
                like: _likeTeam,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
              width: double.infinity,
              height: _topBarHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select favorite teams",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white24,
                      ),
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white38,
                          size: 40,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _selectedTeams.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: GradientButton(
                onPressed: _redirectToMatches,
                text: 'Accept and continue',
              ),
            )
          : SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
