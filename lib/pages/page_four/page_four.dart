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

  Widget _newText(){
    return Dismissible(
      child: ListTile(
        title: Text(inputText),
      ),
      background: Container(
        color: Colors.green,
        width: 100,
      ),
      key: ValueKey(inputText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              Container(
                // width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView.builder(
                  itemCount: _NewPage.length,
                  itemBuilder: (context, index){
                    return _NewPage[index];
                  },
                ),
              ),
              RaisedButton(
                child: Text('Back'),
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
              ),
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
    );
  }
}