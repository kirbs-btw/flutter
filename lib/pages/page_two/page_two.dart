import 'package:flutter/cupertino.dart';
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
          // color: Color(int.parse("0xfffff4e2")),
          //margin: EdgeInsets.fromLTRB(100, 150, 100, 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    'Page 2',
                    style: TextStyle(
                      fontFamily: 'GothamBlack',
                      fontSize: 50,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(1, 10, 1, 10),
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(15.0),
                      color: Color(int.parse("0xfffec673")),
                    ),
                  ),
                  Text(
                    "Stuff",
                    style: TextStyle(
                      fontFamily: '',
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.fromLTRB(90, 90, 90, 90),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(15.0),
                          color: Color(int.parse("0xff222222")),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(90, 90, 90, 90),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(15.0),
                          color: Color(int.parse("0xfffec673")),
                        ),
                      ),
                    ],
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
