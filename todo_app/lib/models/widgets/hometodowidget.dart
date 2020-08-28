import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class HomeToDoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListTile(
        subtitle: Text(
          'Subtitle',
          style: homeListSubtitle,
        ),
        title: Text(
          'Title',
          style: homeListTitle,
        ),
        leading: Radio(),
      ),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)],
          color: myRed,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 100,
    );
  }
}
