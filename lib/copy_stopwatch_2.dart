import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:tts_test/chart.dart';
import 'package:tts_test/chart_2.dart';
import 'package:tts_test/image.dart';

class stopWatch2 extends StatefulWidget {
  stopWatch2({Key key}) : super(key: key);

  @override
  _stopWatch2 createState() => _stopWatch2();
}

class _stopWatch2 extends State<stopWatch2> with TickerProviderStateMixin {
  FlutterTts flutterTts = FlutterTts();
  Color bruhColor = Colors.brown;
  List<double> zaxis = []; // accelerometer value
  AnimationController _controller;
  int toModIndex = 10;
  int index = 0;
  int checkNum = 0; // to stop infinite navigation
  int levelClock = 30; // stopwatch
  int accDelay = 500; // change ms value here
  int lastsaved = DateTime.now().millisecondsSinceEpoch;
  double presentz;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      // modify needed
      if (DateTime.now().millisecondsSinceEpoch - lastsaved > accDelay &&
          zaxis.length < 60) {
        lastsaved = DateTime.now().millisecondsSinceEpoch;
        print('delay z axis = ${event.z}');
        zaxis.add(event.z);
        print('length = ${zaxis.length}');
        print('index = ${index}');
        index++;
        presentz = event.z;
        Color getColor(presentz) {
          if (presentz <= 3 && presentz >= -3) {
            setState(() {
              bruhColor = Colors.yellow;
            });
            if (index % toModIndex == 0) {
              flutterTts.setLanguage("th-TH");
              flutterTts.speak("ช้าเกินไป");
            }
          } else if (presentz > 3 &&
              presentz < 5 &&
              presentz < -3 &&
              presentz > -5) {
            setState(() {
              bruhColor = Colors.green;
            });
            if (index % toModIndex == 0) {
              flutterTts.setLanguage("th-TH");
              flutterTts.speak("ตกกะปิ");
            }
          } else {
            setState(() {
              bruhColor = Colors.red;
            });
            if (index % toModIndex == 0) {
              flutterTts.setLanguage("th-TH");
              flutterTts.speak("เร็วเกินไป");
            }
          }
        }

        getColor(presentz);
        // return event.z;
      }
      if (zaxis.length == 60 && checkNum == 0) {
        checkGraph();
        checkNum++;
      }
      //checkList();
    });

    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  Future<void> checkGraph() async {
    // temporarily disable
    print(zaxis);
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new chartStatic(
              graphValue: zaxis)), // use this command to go another page
    );
  }

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        centerTitle: true,
        title: Text("CPR Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Countdown(
              animation: StepTween(
                begin: levelClock, // THIS IS A USER ENTERED NUMBER
                end: 0,
              ).animate(_controller),
            ),
            Container(
                height: sWidth / 2.7,
                width: sWidth / 2.7,
                child: Animator<double>(
                    cycles: 0,
                    curve: Curves.elasticIn,
                    tween: Tween<double>(begin: 25.0, end: 20.0),
                    duration: Duration(
                        milliseconds: 250), // It actually meant 1 second
                    builder: (context, animatorstate, child) => Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: animatorstate.value * 5,
                        ))),
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.all(50.0),
              decoration:
                  BoxDecoration(color: bruhColor, shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key key, this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    // print('animation.value  ${animation.value} ');
    // print('inMinutes ${clockTimer.inMinutes.toString()}');
    // print('inSeconds ${clockTimer.inSeconds.toString()}');
    // print(
    //     'inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 110,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
