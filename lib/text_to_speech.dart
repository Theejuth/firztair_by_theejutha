import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class tts extends StatefulWidget {
  tts({Key? key}) : super(key: key);

  @override
  _ttsState createState() => _ttsState();
}

class _ttsState extends State<tts> {
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context); // fuck go back button
          },
        ),
        title: Text("Text to speech"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            const SizedBox(height: 30), // make distance
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 40),
                primary: Colors.blue, // background
                onPrimary: Colors.white, // foreground
                shape: StadiumBorder(), // curve shape
              ),
              onPressed: () async {
                flutterTts.speak("hello");
              },
              child: Text('test text to speech'),
            ),
          ]),
        ),
      ),
    );
  }
}
