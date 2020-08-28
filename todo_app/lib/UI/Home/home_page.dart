import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/models/widgets/hometodowidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: ListView(
        padding: EdgeInsets.only(top: 250),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<HomeToDoWidget> notelist = [];
    for (int i = 0; i < 20; i++) {
      notelist.add(HomeToDoWidget());
    }
    return notelist;
  }
}
