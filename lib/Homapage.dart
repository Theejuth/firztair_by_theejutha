import 'package:firztair_by_theejutha/DetailScreen.dart';
import 'package:firztair_by_theejutha/DetailScreen0.dart';
import 'package:firztair_by_theejutha/DetailScreen1.dart';
import 'package:firztair_by_theejutha/Former_CardPage.dart';
import 'package:firztair_by_theejutha/NavigationDrawerWidget.dart';
import 'package:firztair_by_theejutha/ProtoDetail.dart';
import 'package:flutter/material.dart';
import 'package:firztair_by_theejutha/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'copy_stopwatch_2.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, double width, double height, Widget child});
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(""),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: <Widget>[
            _index == 0
                ? Home(context)
                : (_index == 1
                    ? MyCard(context)
                    : _index == 2
                        ? Notications(context)
                        : Setting(context)),
            Padding(
                padding: EdgeInsets.only(
                    top: 10.0,
                    left: 18,
                    right: 18,
                    bottom: MediaQuery.of(context).padding.bottom),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: _index == 0
                                    ? Colors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.home,
                                      color: _index == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          _index == 0 ? "Home" : "",
                                          style: TextStyle(
                                              color: _index == 0
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))
                                  ],
                                )))),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: _index == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.credit_card,
                                      color: _index == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          _index == 1 ? "Card" : "",
                                          style: TextStyle(
                                              color: _index == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))
                                  ],
                                )))),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 2;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: _index == 2
                                    ? Colors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.notifications,
                                      color: _index == 2
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          _index == 2 ? "Notifications" : "",
                                          style: TextStyle(
                                              color: _index == 2
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))
                                  ],
                                )))),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 3;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: _index == 3
                                    ? Colors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.settings,
                                      color: _index == 3
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          _index == 3 ? "Settings" : "",
                                          style: TextStyle(
                                              color: _index == 3
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))
                                  ],
                                )))),
                  ],
                ))
          ],
        ));
  }

  @override
  Widget Home(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LessonContent(
            number: 25,
            position: "https://cdn-icons-png.flaticon.com/512/2873/2873008.png",
            title: "????????????????????????????????????",
            Colored: kBlueColor,
            location: ProtDetail(),
            Red: 110,
            Green: 138,
            Blue: 250,
          ),
          LessonContent(
            number: 15,
            position: "https://image.flaticon.com/icons/png/512/65/65000.png",
            title: "?????????????????????????????????????????????????????????",
            Colored: gradientStartColor,
            location: stopWatch2(),
            Red: 0,
            Green: 80,
            Blue: 172,
          ),
        ],
      ),
    );
  }

  @override
  Widget MyCard(BuildContext context) {
    return Expanded(child: (Text("Hello World")));
  }

  @override
  Widget Notications(BuildContext context) {
    return Expanded(
        child: Center(
      child: Text(
        "Notications",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ));
  }

  @override
  Widget Setting(BuildContext context) {
    return Expanded(
        child: Center(
      child: Text(
        "Setting",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ));
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final String duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration \n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextSyule.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(isDone ? 1 : .5),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}

class LessonContent extends StatelessWidget {
  final int number;
  final int Red;
  final int Green;
  final int Blue;
  final String position;
  final String title;
  final Color Colored;
  final bool isDone;
  final Widget location;

  LessonContent(
      {Key key,
      this.number,
      this.position,
      this.title,
      this.Colored,
      this.location,
      this.isDone = false,
      this.Red,
      this.Green,
      this.Blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
        child: GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => location));
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            height: 160,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 136,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colored,
                      boxShadow: [kDefaultShadow]),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 160,
                    width: 200,
                    child: Image.network(
                      position,
                      fit: BoxFit.cover,
                      color: Color.fromRGBO(Red, Green, Blue, 1),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: SizedBox(
                    height: 136,
                    width: size.width - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Spacer(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Text(
                              title,
                              style: GoogleFonts.prompt(
                                  fontSize: 18, color: Colors.black),
                            )),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade400.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            ),
                          ),
                          child: Text(
                            "$number",
                            style: Theme.of(context).textTheme.button,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
