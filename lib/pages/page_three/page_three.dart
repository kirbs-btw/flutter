import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageThree createState() => _PageThree();
}

class _PageThree extends State<PageThree> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Page 3",
              style: TextStyle(
                fontFamily: 'GothamHtf',
                fontSize: 50,
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Back'),
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ],
        ),

      )

    );
  }
}
