import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/team.dart';

class TeamCard extends StatefulWidget {
  final Team team;
  final Function like;
  final Function dislike;

  TeamCard({
    @required this.team,
    @required this.like,
    @required this.dislike,
  });

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  bool _isLiked = false;

  _toggleSelected() {
    setState(() {
      _isLiked = !_isLiked;
    });

    if (_isLiked) {
      widget.like(widget.team);
    } else {
      widget.dislike(widget.team);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: widget.team.gameColor,
          ),
          const SizedBox(width: 20),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: widget.team.teamColor,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.team.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "${widget.team.followers} followers",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          IconButton(
            splashRadius: 1,
            icon: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_border,
              color: _isLiked ? Colors.red : Colors.grey,
            ),
            onPressed: _toggleSelected,
          )
        ],
      ),
    );
  }
}
