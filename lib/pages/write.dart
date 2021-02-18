import 'package:flutter/material.dart';
import 'package:the_void/constants.dart';

class WritePage extends StatefulWidget {
  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  TextEditingController textController = TextEditingController();
  int selectedMood;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkColor,
        title: Text(
          'Write',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.sentiment_very_dissatisfied),
                onPressed: () => {
                  setState(() {
                    selectedMood = 1;
                  })
                },
                iconSize: 50.0,
                color: selectedMood == 1 ? kIcyColor : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.sentiment_dissatisfied),
                onPressed: () => {
                  setState(() {
                    selectedMood = 2;
                  })
                },
                iconSize: 50.0,
                color: selectedMood == 2 ? kHoneydewColor : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.sentiment_neutral),
                onPressed: () => {
                  setState(() {
                    selectedMood = 3;
                  })
                },
                iconSize: 50.0,
                color: selectedMood == 3 ? kLimeColor : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.sentiment_satisfied),
                onPressed: () => {
                  setState(() {
                    selectedMood = 4;
                  })
                },
                iconSize: 50.0,
                color: selectedMood == 4 ? kBoneColor : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.sentiment_very_satisfied),
                onPressed: () => {
                  setState(() {
                    selectedMood = 5;
                  })
                },
                iconSize: 50.0,
                color: selectedMood == 5 ? kOrangeColor : Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: 250.0,
              width: 500.0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: null,
                  maxLength: 300,
                  decoration: InputDecoration(
                    hintText: 'Let it out...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: kMauveColor,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Send It Into The Void',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
