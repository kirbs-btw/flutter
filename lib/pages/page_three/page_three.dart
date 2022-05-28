import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partyfinder/main.dart';

class PageThree extends StatefulWidget {

  @override
  _PageThree createState() => _PageThree();
}

class _PageThree extends State<PageThree> {
  String inputText = '';
  List<Widget> _NewPage = [];


  void updateText(String text){
    inputText = text;
  }

  void processInput(){
    print(inputText);
    setState(() {
      _NewPage.add(_newText());
    });
  }

  void clearWidgets(){
    setState(() {
      _NewPage = [];
    });
  }

  Widget _newText(){
    return Container(
      child: Text(
        inputText,
        style: TextStyle(
          fontFamily: 'GothamHtf',
          fontSize: 20,
        ),
      ),
    );
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
                  RaisedButton(
                    onPressed: (){
                      clearWidgets();
                    },
                    child: const Text('clear'),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                itemCount: _NewPage.length,
                itemBuilder: (context, index){
                  return _NewPage[index];
                  },
                ),
            ),
          ],
        ),
      )

    );
  }
}
