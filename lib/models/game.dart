import 'package:flutter/material.dart';

class Game {
  String name;
  int followers;
  bool isSelected;
  String image;

  Game({
    @required this.name,
    @required this.image,
    @required this.followers,
  }) {
    this.isSelected = false;
  }

  void toggleSelect() {
    this.isSelected = !this.isSelected;
  }
}
