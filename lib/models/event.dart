import 'package:flutter/material.dart';

class Event {
  String title;
  String dateStart;
  String dateEnd;
  bool notificationsOn;
  bool isLive;
  Color color;

  Event({
    @required this.title,
    @required this.dateStart,
    @required this.dateEnd,
    @required this.isLive,
    @required this.color,
  }) {
    this.notificationsOn = false;
  }
}
