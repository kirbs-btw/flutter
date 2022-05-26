import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';

class PageFour extends StatefulWidget {
  PageFour({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageFour createState() => _PageFour();
}

class _PageFour extends State<PageFour> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Back'),
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
              ),
              Dismissible(
                child: ListTile(
                  title: Text("Hello"),
                ),
                background: Container(
                  color: Colors.green,
                  width: 100,
                ),
                key: ValueKey('widget'),
              ),
              Dismissible(
                child: ListTile(
                  title: Text("Hello"),
                ),
                background: Container(
                  color: Colors.green,
                  width: 100,
                ),
                key: ValueKey('widget2'),
              ),
            ],
          ),
        ),
    );
  }
}