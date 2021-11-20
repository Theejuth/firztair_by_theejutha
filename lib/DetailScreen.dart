import 'package:firztair_by_theejutha/achievement_data.dart';
import 'package:firztair_by_theejutha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                    Text(
                      "Injury Wound",
                      style: TextStyle(
                        fontSize: 56,
                        color: kTextColor,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "injuries that break the skin or other body tissues. They include cuts, scrapes, scratches, and punctured skin. They often happen because of an accident, but surgery, sutures, and stitches also cause wounds.",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
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
                  style: TextStyle(
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
                              'https://images.onhealth.com/images/slideshow/caring-for-wounds-s1-blood-finger.jpg',
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
            top: 20,
            child: Image.network(
              "https://www.shareicon.net/data/512x512/2015/10/27/662591_medical_512x512.png",
              scale: 2,
            )),
        Positioned(
            top: 60,
            left: 32,
            child: Text(
              "1",
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
