import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/models/widgets/hometodowidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeToDoWidget> notelist = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: Theme(
        data: ThemeData(canvasColor: Colors.transparent),
        child: ReorderableListView(
          scrollDirection: Axis.vertical,
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final HomeToDoWidget item = notelist.removeAt(oldIndex);
              notelist.insert(newIndex, item);
            });
          },
          padding: EdgeInsets.only(top: 250),
          children: getList(),
          // children: List.generate(
          //   3,
          //   (index) {
          //     return HomeToDoWidget(
          //       Key('$index'),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }

  List<Widget> getList() {
//return List.generate(notelist.length, (index) => ListViewCard())

    // for (int i = 0; i < 5; i++) {
    //   notelist.add(HomeToDoWidget(Key('$i')));
    // }
    // return notelist;
    notelist = List.generate(
      5,
      (index) => HomeToDoWidget(Key('$index')),
    );
    return notelist;
  }
}
