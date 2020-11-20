import 'package:flutter/material.dart';


class CreateCat_TabList_OnTop extends StatefulWidget {
  final String cat_name;
  final bool isLast;

  const CreateCat_TabList_OnTop({Key key, this.cat_name, this.isLast}) : super(key: key);

  @override
  _CreateCat_TabList_OnTopState createState() => _CreateCat_TabList_OnTopState();
}

class _CreateCat_TabList_OnTopState extends State<CreateCat_TabList_OnTop> {
  @override
  Widget build(BuildContext context) {
    if (widget.isLast) {
      return Padding(
        padding: const EdgeInsets.only(right: 0.0),
        child: Tab(
          child: Text(widget.cat_name),
        ),
      );
    }
    else {
      return Tab(
        child: Text(widget.cat_name),
      );
    }
  }
}

