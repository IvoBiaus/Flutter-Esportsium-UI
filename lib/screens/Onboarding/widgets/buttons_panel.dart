import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/screens/SelectGames/index.dart';
import 'package:flutteresportsiumui/widgets/gradient_button.dart';

class ButtonsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectGames()),
            );
          },
          text: 'Let\'s get started',
        ),
        const SizedBox(height: 15),
        FlatButton(
          onPressed: () {},
          padding: const EdgeInsets.all(0.0),
          child: Text(
            'Log in',
            textAlign: TextAlign.center,
            style: Theme.of(context).accentTextTheme.button,
          ),
        ),
      ],
    );
  }
}
