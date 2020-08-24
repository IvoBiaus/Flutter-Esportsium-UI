import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;

  const Logo({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size * 0.08),
      ),
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [
            Theme.of(context).primaryColorLight,
            Theme.of(context).primaryColor,
          ],
        ).createShader(bounds),
        child: Icon(
          Icons.flag,
          size: size * 0.8,
          color: Colors.white,
        ),
      ),
    );
  }
}
