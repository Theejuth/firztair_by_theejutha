import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: <Widget>[
            _index == 0
                ? Home(context)
                : (_index == 1
                    ? Search(context)
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
                                    ? Colors.red
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
                                    ? Colors.red
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 1),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.search,
                                      color: _index == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          _index == 1 ? "Search" : "",
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
                                    ? Colors.red
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
                                    ? Colors.red
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
        child: Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ));
  }
}

@override
Widget Search(BuildContext context) {
  return Expanded(
      child: Center(
    child: Text(
      "Search",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
  ));
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
