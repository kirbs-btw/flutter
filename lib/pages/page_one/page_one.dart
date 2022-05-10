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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Page 1",
              style: TextStyle(
                fontSize: 75,
                fontFamily: 'GothamBlack',
              ),
            ),
            RaisedButton(
              child: const Text('Back'),
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },
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
