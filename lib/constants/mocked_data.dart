import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/models/game.dart';
import 'package:flutteresportsiumui/models/team.dart';
import 'package:flutteresportsiumui/models/match.dart';

Game a = Game(
  name: "Counter-Strike: GO",
  followers: 1712618,
  image:
      "https://www.playerone.vg/wp-content/uploads/2020/04/counter-strike-valve-jugadores-record2-1.png",
  color: Colors.yellow[800],
);

Game b = Game(
  name: "League of Legends",
  followers: 1345342,
  image: "https://esports.eldesmarque.com/wp-content/uploads/2019/09/LoL2.jpg",
  color: Colors.blue,
);

Game c = Game(
  name: "Dota 2",
  followers: 1012438,
  image: "https://estnn.com/wp-content/uploads/2019/09/dota-2-header.jpg",
  color: Colors.red,
);

Game d = Game(
  name: "Hearthstone",
  followers: 831146,
  image:
      "https://d2q63o9r0h0ohi.cloudfront.net/images/esports/masters/og_image-2e1ee3c5546d60c597788e9d2852cfca86b2322dd574acf7fe4d322d94ead7097cd6a021c716b44d572711b840bf1f106a300fbaebce3a020554c177a918ee6b.jpg",
  color: Colors.lime,
);

Game e = Game(
  name: "Valorant",
  followers: 812618,
  image:
      "https://hipertextual.com/files/2020/05/hipertextual-valorant-shooter-gratuito-creadores-league-of-legends-tiene-fecha-lanzamiento-2020518122-scaled.jpg",
  color: Colors.redAccent[700],
);

Game f = Game(
  name: "Call of Duty: Warzone",
  followers: 2712618,
  image:
      "https://static1.millenium.gg/articles/3/15/36/3/@/68562-call-of-duty-warzone-problems-and-fixes-article_image_bd-1.jpg",
  color: Colors.green,
);

List<Game> games = [a, b, c, d, e, f];

Team one = Team(
  name: "Nemiga",
  followers: 252418,
  teamColor: Colors.orange[900],
  game: a,
);

Team two = Team(
  name: "Tricked",
  followers: 232346,
  teamColor: Colors.red[900],
  game: a,
);

Team three = Team(
  name: "HellRaisers",
  followers: 178932,
  teamColor: Colors.red,
  game: c,
);

Team four = Team(
  name: "Vitality",
  followers: 154234,
  teamColor: Colors.yellow[800],
  game: b,
);

Team five = Team(
  name: "Cloud9",
  followers: 120612,
  teamColor: Colors.blue,
  game: b,
);

Team six = Team(
  name: "Chiefs",
  followers: 53823,
  teamColor: Colors.blue[900],
  game: e,
);

Team seven = Team(
  name: "Supports",
  followers: 154234,
  teamColor: Colors.lightBlueAccent,
  game: d,
);

Team eight = Team(
  name: "Brokers",
  followers: 95198,
  teamColor: Colors.purple[800],
  game: e,
);

Team nine = Team(
  name: "Genius2",
  followers: 53823,
  teamColor: Colors.green[900],
  game: f,
);

List<Team> teams = [one, two, three, four, five, six, seven, eight, nine];

Match alpha = Match(
  game: a,
  name: "ESEA MDL Season 34 Europe",
  teamOne: one,
  teamTwo: two,
  teamOneScore: 3,
  teamTwoScore: 4,
  ended: true,
);

Match bravo = Match(
  game: b,
  name: "LEC Summer 2020 - Group stage",
  teamOne: three,
  teamTwo: four,
  isLive: true,
);

Match charlie = Match(
  game: c,
  name: "WePlay! Pushka League S1",
  teamOne: five,
  teamTwo: six,
  time: "20:45",
);

Match delta = Match(
  game: c,
  name: "RDY Cup",
  teamOne: seven,
  teamTwo: eight,
  time: "22:00",
);

Match echo = Match(
  game: d,
  name: "Some huge event - Here",
  teamOne: nine,
  teamTwo: one,
  time: "23:30",
);

List<Match> matches = [alpha, bravo, charlie, delta, echo];
