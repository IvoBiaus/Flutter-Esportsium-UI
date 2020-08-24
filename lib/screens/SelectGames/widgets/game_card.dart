import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/game.dart';

class GameCard extends StatefulWidget {
  final Game game;
  final Function onSelected;
  final Function onUnselected;

  GameCard({
    @required this.game,
    @required this.onSelected,
    @required this.onUnselected,
  });

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  bool _isSelected = false;

  _toggleSelected() {
    setState(() {
      _isSelected = !_isSelected;
    });

    if (_isSelected) {
      widget.onSelected(widget.game);
    } else {
      widget.onUnselected(widget.game);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.game.image,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: FlatButton(
                    padding: const EdgeInsets.all(0),
                    color: _isSelected
                        ? Theme.of(context).primaryColor
                        : Colors.black45,
                    onPressed: _toggleSelected,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey[800]),
                    ),
                    child: Container(
                      height: 45,
                      width: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 8,
                            sigmaY: 8,
                          ),
                          child: Center(
                            child: Text(
                              _isSelected ? 'Selected' : 'Select',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            widget.game.name,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 5),
          Text(
            "${widget.game.followers} followers",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
