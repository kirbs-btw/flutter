import 'dart:io';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:partyfinder/pages/page_one/page_one.dart';
import 'package:partyfinder/pages/page_two/page_two.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => MyHomePage(),
    '/page_one': (context) => PageOne(),
    '/page_two': (context) => PageTwo(),
    },
  )
);

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Hind',
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Hello Sir wittu!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child:
        Padding(
          padding: EdgeInsets.all(15), // how to center the font without that ??
          child: Text(
            'Search',
            style: TextStyle(
              fontFamily: 'GothamBlack',
              color: Colors.white,
              fontSize: 25,
              ),
            ),
          ),
        ),
      body:
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                "Hello",
              style: TextStyle(
                  fontSize: 75,
                  fontFamily: 'GothamBlack',
              ),

            ),
            const Text(
              "here is kirbs-btw work",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'GothamHTF',
              ),
            ),
            Container(
                margin: new EdgeInsets.symmetric(vertical: 150.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          child: const Text('Project 1'),
                          onPressed: (){
                            Navigator.pushNamed(context, '/page_one');
                          }
                        ),
                        RaisedButton(
                          child: const Text('Project 2'),
                          onPressed: (){
                            Navigator.pushNamed(context, '/page_two');
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          child: const Text('Project 3'),
                          onPressed: test,
                        ),
                        RaisedButton(
                          child: const Text('Project 4'),
                          onPressed: test,
                        ),
                      ],
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

void test() {
  var name = "sir";
}
