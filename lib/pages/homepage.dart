// pages/home_page.dart
import 'package:bud/containers/auth_button_container.dart';
import 'package:bud/containers/counter.dart';
import 'package:bud/containers/increase_counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new GoogleAuthButtonContainer(), // new

                new Text(
                  'You have pushed the button this many times:',
                ),
                new Counters(), // updated
              ],
            ),
          ),
        ),
        floatingActionButton: new IncreaseCountButton() // updated
        );
  }
}
