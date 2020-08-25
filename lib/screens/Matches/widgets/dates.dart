import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    List<Widget> dates = [];

    for (int i = -1; i < 6; i++) {
      final date = now.add(new Duration(days: i));
      dates.add(_dayElement(date, context));
    }

    return Container(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dates.length,
          itemBuilder: (context, index) => dates[index],
        ),
      ),
    );
  }

  Widget _dayElement(DateTime date, BuildContext context) {
    final now = new DateTime.now();
    final isToday = now.day == date.day;

    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: isToday
            ? BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColorLight,
                    Theme.of(context).primaryColor,
                  ],
                ),
              )
            : BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.white12,
                    width: 0.25,
                  ),
                  horizontal: BorderSide(
                    color: Colors.white12,
                    width: 0.5,
                  ),
                ),
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              isToday ? "Today" : '${DateFormat('EEE').format(date)}',
              style: TextStyle(
                color: isToday ? Colors.white : Colors.white30,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              '${date.day}',
              style: TextStyle(
                color: isToday ? Colors.white : Colors.white30,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
