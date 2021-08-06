import 'dart:html';
import 'package:arkit_plugin/arkit_node.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:arkit_plugin/utils/json_converters.dart';
import 'package:firztair_by_theejutha/LogInScreen.dart';
import 'package:flutter/material.dart';
import 'package:arkit_plugin/widget/arkit_scene_view.dart';
import 'package:vector_math/vector_math_64.dart';

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
      home: LoginScreen(),
    );
  }
}

class SwordOfDemocles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ARKitSceneView(onARKitViewCreated: (c) {
        final node = ARKitNode(
          geometry: ARKitBox(
              width: 0.06,
              height: 0.06,
              length: 0.06,
              materials: [ARKitMaterial(fillMode: ARKitFillMode.lines)]),
          position: Vector3(0, 0, -0.5),
        );
        c.add(node);
      }),
    );
  }
}
