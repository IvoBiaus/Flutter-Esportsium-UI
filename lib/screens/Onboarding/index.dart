import 'package:flutter/material.dart';
import 'package:flutteresportsiumui/screens/Onboarding/widgets/buttons_panel.dart';
import 'package:flutteresportsiumui/screens/Onboarding/widgets/logo.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Logo(size: 130),
                    const SizedBox(height: 20),
                    Text(
                      "Esportsium",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "The perfect esport app to keep track of news, schedules and results for your favourite teams, players and turnaments.",
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ButtonsPanel(),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "Join 2 734 189 other esport fans!",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "By using this service you accept Terms & services and Privacy Policy",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
