import 'package:firztair_by_theejutha/DetailScreen.dart';
import 'package:firztair_by_theejutha/DetailScreen0.dart';
import 'package:firztair_by_theejutha/DetailScreen1.dart';
import 'package:firztair_by_theejutha/Homapage.dart';
import 'package:firztair_by_theejutha/constants.dart';
import 'package:firztair_by_theejutha/models/lesson.dart';
import 'package:flutter/material.dart';

class ProtDetail extends StatefulWidget {
  const ProtDetail({Key key}) : super(key: key);

  @override
  _ProtDetailState createState() => _ProtDetailState();
}

class _ProtDetailState extends State<ProtDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios))),
          LessonContent(
            number: 1,
            position: "https://image.flaticon.com/icons/png/512/31/31605.png",
            title: "บาดแผลตัด",
            Colored: kBlueColor,
            location: DetailScreen(),
            Red: 110,
            Green: 138,
            Blue: 250,
          ),
          LessonContent(
              number: 2,
              position: "https://cdn-icons-png.flaticon.com/512/130/130162.png",
              title: "บาดแผลพุพอง",
              Colored: gradientStartColor,
              location: DetailScreen0(),
              Red: 0,
              Green: 80,
              Blue: 172),
          LessonContent(
            number: 3,
            position: "http://cdn.onlinewebfonts.com/svg/img_493081.png",
            title: "บาดแผลถลอก",
            Colored: kTextColor,
            location: DetailScreen1(),
            Red: 13,
            Green: 19,
            Blue: 51,
          ),
        ],
      ),
    );
  }
}
