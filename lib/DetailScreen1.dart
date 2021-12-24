import 'package:firztair_by_theejutha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen1 extends StatefulWidget {
  const DetailScreen1({Key key}) : super(key: key);

  @override
  _DetailScreenState1 createState() => _DetailScreenState1();
}

class _DetailScreenState1 extends State<DetailScreen1> {
  FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 300,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "บาดแผลถลอก",
                          style: GoogleFonts.prompt(
                            fontSize: 56,
                            color: kTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        IconButton(
                          onPressed: () async {
                            await flutterTts.setLanguage('th-TH');
                            await flutterTts.setSpeechRate(0.8);
                            await flutterTts.setVolume(1);
                            await flutterTts.setPitch(0.1);
                            flutterTts.speak(
                                "บาดแผลถลอกหมายถึงการเป็นบาดแผลที่เกิดจากการถูกขีดข่วนถูกถูหรือถูกครูดบาดแผลชนิดนี้จะตื้นเพียงแค่ผิวหนังชั้นนอกเท่านั้นและมีเลือดออกเล็กน้อยอันตรายของบาดแผลอยู่ที่การติดเชื้อบาดแผลถลอกที่พบได้เสมอคือการหกล้มเข่าถลอกดังนั้นเมื่อเกิดบาดแผลขึ้นต้องรีบปฐมพยาบาลเพื่อลดอาการเจ็บปวดและป้องกันไม่ให้แผลติดเชื้อ");
                          },
                          icon: Icon(Icons.volume_up_sharp),
                          iconSize: 50,
                          color: kTextColor,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "บาดแผลถลอกหมายถึงการเป็นบาดแผลที่เกิดจากการถูกขีดข่วนถูกถูหรือถูกครูดบาดแผลชนิดนี้จะตื้นเพียงแค่ผิวหนังชั้นนอกเท่านั้น และมีเลือดออกเล็กน้อย อันตรายของบาดแผลอยู่ที่การติดเชื้อ บาดแผลถลอกที่พบได้เสมอ คือ การหกล้ม เข่าถลอก ดังนั้นเมื่อเกิดบาดแผลขึ้นต้องรีบปฐมพยาบาล  เพื่อลดอาการเจ็บปวดและป้องกันไม่ให้แผลติดเชื้อ",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.prompt(
                          fontSize: 20,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Divider(
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  "Gallery",
                  style: GoogleFonts.prompt(
                      fontSize: 25,
                      color: kTextColor,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              'https://www.thailandmedical.news/uploads/editor/files/image(139).jpg',
                              fit: BoxFit.cover,
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
        Positioned(
            right: 8,
            top: 5,
            child: Image.network(
              "http://cdn.onlinewebfonts.com/svg/img_493081.png",
              color: Color.fromRGBO(0, 0, 0, 0.1),
              scale: 3,
            )),
        Positioned(
            top: 60,
            left: 32,
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 247,
                  color: Colors.grey.withOpacity(0.1),
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            )),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios))
      ]),
    ));
  }
}
