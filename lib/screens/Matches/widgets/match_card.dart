import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/match.dart';

class MatchCard extends StatelessWidget {
  final Match match;

  MatchCard({@required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: match.game.color,
            width: 6,
          ),
          bottom: BorderSide(
            color: Colors.white12,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.all(15),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(match.name),
        ],
      ),
    );
  }
}
