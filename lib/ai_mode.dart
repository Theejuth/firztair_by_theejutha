import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

// class pickingImage extends StatelessWidget {
//   const pickingImage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: null,
//     );
//   }
// }

class PickingImage extends StatefulWidget {
  const PickingImage({Key? key}) : super(key: key);

  @override
  _PickingImage createState() => _PickingImage();
}

class _PickingImage extends State<PickingImage> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context); // fuck go back button
              }),
          title: Text("AI mode"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {
                // decorate
              },
            )
          ]),
      body: SafeArea(
          child: Center(
              child: Column(
        children: <Widget>[
          const SizedBox(height: 30), // make distance
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 40),
              primary: Colors.blue, // background
              onPrimary: Colors.white, // foreground
              shape: StadiumBorder(), // curve shape
            ),
            onPressed: () {
              filePicker();
            },
            child: Text('From Storage'),
          ),
          const SizedBox(height: 30), // make distance
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 40),
              primary: Colors.blue, // background
              onPrimary: Colors.white, // foreground
              shape: StadiumBorder(), // curve shape
            ),
            onPressed: () {
              CameraPicker();
            },
            child: Text('From Camera'),
          ),
          const SizedBox(height: 50), // make distance
          image == null
              ? Text("No Image Found Please Insert the Image")
              : // if image == null
              Image.file(
                  File(image!.path),
                  width: 250,
                  fit: BoxFit.cover,
                )
        ],
      ))),
    );
  }

  void filePicker() async {
    try {
      final XFile? selectImage =
          await _picker.pickImage(source: ImageSource.gallery);
      // print(selectImage!.path);
      setState(() {
        image = selectImage;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void CameraPicker() async {
    try {
      final XFile? selectImage =
          await _picker.pickImage(source: ImageSource.camera);
      // print(selectImage!.path);
      setState(() {
        image = selectImage;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }
}
