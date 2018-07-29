import 'package:flutter/material.dart';

import './jersey.dart';

class JerseyManager extends StatefulWidget {
  final Map<String,String> cards;

  JerseyManager(this.cards);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _JerseyManagerState();
  }
}

class _JerseyManagerState extends State<JerseyManager> {
  List<Map<String, String>> _cards = [];

  @override
  void initState() {
    // TODO: implement initState
    _cards.add(widget.cards);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _cards.add({"text": "Jersey 2", "url": "assets/theme 1.jpg"});
              });
            },
            child: Text('Add cards'),
          ),
        ),
        Jersey(_cards)
      ],
    );
  }
}
