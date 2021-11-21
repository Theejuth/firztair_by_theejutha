import 'package:arkit_plugin/arkit_node.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:arkit_plugin/utils/json_converters.dart';
import 'package:firztair_by_theejutha/LoginScreen.dart';
import 'package:firztair_by_theejutha/quiz.dart';
import 'package:firztair_by_theejutha/text_to_speech.dart';
import 'package:flutter/material.dart';
import 'package:arkit_plugin/widget/arkit_scene_view.dart';
import 'package:vector_math/vector_math_64.dart';
import 'achievement_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: tts(),
    );
  }
}

class SwordOfDemocles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ARKitSceneView(
      onARKitViewCreated: (c) => onArKitViewCreated(c),
    ));
  }
}

void onArKitViewCreated(ARKitController c) {
  final node = ARKitNode(
      geometry: ARKitBox(width: 0.1, height: 0.1, length: 0.1),
      position: Vector3(0, 0, -0.5));
  c.add(node);
}
