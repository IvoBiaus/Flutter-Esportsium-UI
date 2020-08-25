import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/constants/mocked_data.dart';
import 'package:flutteresportsiumui/screens/Matches/widgets/match_card.dart';
import './widgets/dates.dart';

class Matches extends StatelessWidget {
  static const double _topBarHeight = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Matches",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              size: 32,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: _topBarHeight + 15),
            child: Column(
              children: [
                Dates(),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white12,
                          width: 1,
                        ),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: matches.length,
                      itemBuilder: (context, index) =>
                          MatchCard(match: matches[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _topBarHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(20, 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
