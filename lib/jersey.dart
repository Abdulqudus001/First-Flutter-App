import 'package:flutter/material.dart';

class Jersey extends StatelessWidget {
  final List<Map<String,String>> cards;
  Jersey(this.cards);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: cards
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset(element["url"]),
                    Text(element["text"])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
