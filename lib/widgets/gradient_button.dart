import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final BorderRadius radius = BorderRadius.circular(10);

  GradientButton({
    @required this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
      ),
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 60,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: radius,
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
