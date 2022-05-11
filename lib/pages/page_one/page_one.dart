import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';
// pages for further things



class PageOne extends StatefulWidget {
  PageOne({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageOne createState() => _PageOne();
}

class _PageOne extends State<PageOne> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Page 1",
                style: TextStyle(
                  fontSize: 75,
                  fontFamily: 'GothamBlack',
                  backgroundColor: Colors.teal,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(50),
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  child: const Text('Back'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

