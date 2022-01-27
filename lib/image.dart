import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class picker extends StatefulWidget {
  picker({Key key}) : super(key: key);

  @override
  _picker createState() => _picker();
}

class _picker extends State<picker> {
  File _image;

  Future cam_image() async {
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future gal_image() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            width: 352,
            child: Center(
                child: _image == null
                    ? Text(
                        "Interact by clicking the buttons below",
                        style: TextStyle(fontSize: 20),
                      )
                    : Image.file(_image)),
          ),
          SizedBox(height: 132),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                tooltip: "Choose from gallary",
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                onPressed: () {
                  gal_image();
                },
                child: Icon(Icons.photo),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                tooltip: "Open Camera",
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                onPressed: () {
                  cam_image();
                },
                child: Icon(Icons.camera),
              )
            ],
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            onPressed: () {
              setState(() {
                _image = null;
              });
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("Reset"),
          )
        ],
      ),
    );
  }
}
