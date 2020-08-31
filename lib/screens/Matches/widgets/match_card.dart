import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/match.dart';
import 'package:flutteresportsiumui/models/team.dart';

class MatchCard extends StatelessWidget {
  final Match match;

  MatchCard({@required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: match.isLive ? Colors.white10 : null,
        border: _colorBorder(),
      ),
      padding: const EdgeInsets.all(15),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: match.game.color,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  match.name,
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              _broadcastTime(),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _team(match.teamOne),
                      _team(match.teamTwo),
                    ],
                  ),
                ),
                _scores(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _colorBorder() {
    return Border(
      left: BorderSide(
        color: match.game.color,
        width: 6,
      ),
      bottom: BorderSide(
        color: Colors.white12,
        width: 0.5,
      ),
    );
  }

  _broadcastTime() {
    return match.isLive
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "Live",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1,
              ),
            ),
          )
        : Text(
            match.ended ? '' : match.time,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          );
  }

  _scores() {
    bool showScores = match.ended || match.isLive;
    return showScores
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${match.teamOneScore}",
                style: TextStyle(
                  color:
                      match.teamOneWonOrTie() ? Colors.white : Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "${match.teamTwoScore}",
                style: TextStyle(
                  color:
                      match.teamTwoWonOrTie() ? Colors.white : Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ],
          )
        : Icon(
            Icons.more_vert,
            color: Colors.white54,
            size: 30,
          );
  }

  _team(Team team) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 40,
          width: 40,
          color: team.teamColor,
        ),
        Text(
          team.name,
          style: TextStyle(
            color: match.isLive ? Colors.white : null,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
