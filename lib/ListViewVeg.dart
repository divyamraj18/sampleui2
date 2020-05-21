import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'listtileWidget.dart';

class ListViewVeg extends StatefulWidget {
  @override
  _ListViewVegState createState() => _ListViewVegState();
}

class _ListViewVegState extends State<ListViewVeg> {
  @override
  Widget build(BuildContext context) {


    return ListView(
      children: <Widget>[
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),
        ListTileWidget(),

      ],
    );
  }
}