import 'package:firztair_by_theejutha/main.dart';
import 'package:flutter/material.dart';
import 'package:firztair_by_theejutha/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 300),
            Text(
              'Lesson 1',
              style: TextStyle(
                  fontSize: 56,
                  color: primaryTextColor.withOpacity(0.6),
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
            Text(
              'Bleeding',
              style: TextStyle(
                fontSize: 31,
                color: primaryTextColor,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
            Divider(color: Colors.black38),
            SizedBox(
              width: 550,
              height: 45,
              child: SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    Text(
                      '01',
                      style: TextStyle(
                          fontSize: 28, color: Colors.black.withOpacity(0.6)),
                    ),
                    Spacer(),
                    Text(
                      'Put pressure on the wound with whatever is available to stop or slow down the flow of blood.',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.black38),
            SizedBox(
                width: 550,
                height: 45,
                child: SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '02',
                        style: TextStyle(
                            fontSize: 28, color: Colors.black.withOpacity(0.6)),
                      ),
                      Spacer(),
                      Text(
                        'If the bleeding is serve, call 1669 as soon as possible, or get someone else to do it.',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Divider(color: Colors.black38),
            SizedBox(
                width: 550,
                height: 45,
                child: SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '03',
                        style: TextStyle(
                            fontSize: 28, color: Colors.black.withOpacity(0.6)),
                      ),
                      Spacer(),
                      Text(
                        'Keep pressure on the wound until help arrives.',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Divider(color: Colors.black38),
            RaisedButton.icon(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SwordOfDemocles()));
              },
              label: Text('Continue as AR MODE'),
              textColor: Colors.white,
              icon: Icon(Icons.arrow_right),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
            Spacer(),
            RaisedButton.icon(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SwordOfDemocles()));
              },
              label: Text('Continue as AI MODE'),
              textColor: Colors.white,
              icon: Icon(Icons.arrow_right),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ],
        ),
      ),
    );
  }
}
