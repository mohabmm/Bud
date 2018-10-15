import 'package:bud/views/SignUpForum.dart';
import 'package:bud/views/Signin.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: new MyApp(),

      routes: <String, WidgetBuilder>{
        //All available pages
        '/SignupForum': (BuildContext context) => new SignupForum(),
      },

      home: new Signin(),
    ));

/*

// main.dart

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  String title = 'MeSuite';
  final store = new Store<AppState>(appReducer,
      initialState: new AppState(),
      middleware: []..addAll(createAuthMiddleware())
      //..addAll(createAuthMiddlewares())
      // ..add(new LoggingMiddleware.printer()), //new
      );

  @override
  Widget build(BuildContext context) {
    // Wrap your MaterialApp in a StoreProvider
    return new StoreProvider(
      // new
      store: store, // new
      child: new MaterialApp(
        title: title,
        home: new HomePage(title),
      ),
    );
  }
}
*/
