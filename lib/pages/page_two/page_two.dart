import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageTwo createState() => _PageTwo();
}

class _PageTwo extends State<PageTwo> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(100, 150, 100, 150),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Page 2',
                    style: TextStyle(
                      fontFamily: 'GothamBlack',
                      fontSize: 50,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(100, 100, 100, 100),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Colors.indigoAccent,
                    ),
                  ),
                  RaisedButton(
                    child: Text('Back'),
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
