import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';

class PageThree extends StatefulWidget {

  @override
  _PageThree createState() => _PageThree();
}



class _PageThree extends State<PageThree> {
  String inputText = '';

  void updateText(String text){
    inputText = text;
  }

  void processInput(){
    print(inputText);

  }



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _formKey,
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
            Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      onChanged: updateText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter something',
                      ),
                    ),
                  ),

                  RaisedButton(
                    onPressed: (){
                     processInput();
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),

      )

    );
  }
}
