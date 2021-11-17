import 'package:firztair_by_theejutha/constants.dart';
import 'package:firztair_by_theejutha/quiz_list.dart';
import 'package:firztair_by_theejutha/result.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF0D1333);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1} /${questions.length}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8,
                    thickness: 1,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    questions[index].question!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 35),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 12),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? isTrue
                                : isWrong
                            : kTextColor,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 10;
                                  print(score);
                                }
                              },
                        child: Text(
                          questions[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        style: ButtonStyle(),
                        onPressed: isPressed
                            ? index + 1 == questions.length
                                ? () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ResultScreen(score)));
                                  }
                                : () {
                                    _controller!.nextPage(
                                        duration: Duration(
                                          milliseconds: 500,
                                        ),
                                        curve: Curves.linear);
                                  }
                            : null,
                        child: Text(
                          index + 1 == questions.length
                              ? "See result"
                              : "Next Question",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ]);
          },
        ),
      ),
    );
  }
}
