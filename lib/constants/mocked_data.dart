import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/game.dart';
import 'package:flutteresportsiumui/models/team.dart';

Game a = Game(
  name: "Counter-Strike: GO",
  followers: 1712618,
  image:
      "https://www.playerone.vg/wp-content/uploads/2020/04/counter-strike-valve-jugadores-record2-1.png",
);

Game b = Game(
  name: "League of Legends",
  followers: 1345342,
  image: "https://esports.eldesmarque.com/wp-content/uploads/2019/09/LoL2.jpg",
);

Game c = Game(
  name: "Dota 2",
  followers: 1012438,
  image: "https://estnn.com/wp-content/uploads/2019/09/dota-2-header.jpg",
);

Game d = Game(
  name: "Hearthstone",
  followers: 831146,
  image:
      "https://d2q63o9r0h0ohi.cloudfront.net/images/esports/masters/og_image-2e1ee3c5546d60c597788e9d2852cfca86b2322dd574acf7fe4d322d94ead7097cd6a021c716b44d572711b840bf1f106a300fbaebce3a020554c177a918ee6b.jpg",
);

Game e = Game(
  name: "Valorant",
  followers: 812618,
  image:
      "https://hipertextual.com/files/2020/05/hipertextual-valorant-shooter-gratuito-creadores-league-of-legends-tiene-fecha-lanzamiento-2020518122-scaled.jpg",
);

Game f = Game(
  name: "Call of Duty: Warzone",
  followers: 2712618,
  image:
      "https://static1.millenium.gg/articles/3/15/36/3/@/68562-call-of-duty-warzone-problems-and-fixes-article_image_bd-1.jpg",
);

List<Game> games = [a, b, c, d, e, f];

Team one = Team(
  name: "Nemiga",
  followers: 252418,
  teamColor: Colors.orange[900],
  gameColor: Colors.yellow[800],
);

Team two = Team(
  name: "Tricked",
  followers: 232346,
  teamColor: Colors.red[900],
  gameColor: Colors.red,
);

Team three = Team(
  name: "HellRaisers",
  followers: 178932,
  teamColor: Colors.red,
  gameColor: Colors.yellow[800],
);

Team four = Team(
  name: "Vitality",
  followers: 154234,
  teamColor: Colors.yellow[800],
  gameColor: Colors.red,
);

Team five = Team(
  name: "Cloud9",
  followers: 120612,
  teamColor: Colors.blue,
  gameColor: Colors.blue,
);

Team six = Team(
  name: "Chiefs",
  followers: 53823,
  teamColor: Colors.blue[900],
  gameColor: Colors.blue,
);

List<Team> teams = [one, two, three, four, five, six];
