import 'package:bud/views/onetimesignupforumsecond.dart';
import 'package:flutter/material.dart';

class OnetimeSigninForum extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<OnetimeSigninForum> {
  @override
  Widget build(BuildContext context) {
    final color = const Color(0xFF13DDD2);

    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: -3.0,
        leading: Icon(
          Icons.clear,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey,
        title: new Text(
          "bud",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: new Container(
          decoration: new BoxDecoration(
            color: color,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0)),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Want to make money ",
                  style: TextStyle(color: Colors.white),
                ),
                new Text(
                  "Offering rides?",
                  style: TextStyle(color: Colors.white),
                ),
                new Text(
                  "Great !",
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SecondSignupDriver())),
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Continue",
                            style: TextStyle(color: color),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Icon(
                            Icons.chevron_right,
                            color: color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
