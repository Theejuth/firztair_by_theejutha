import 'package:arkit_plugin/arkit_node.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:firztair_by_theejutha/Dashboard.dart';
import 'package:firztair_by_theejutha/Homapage.dart';
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
      home: HomeScreen(),
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

//__________________________s$______________s
//_________________________.s$$_____________s$
//________________________s$$$’____________s$$
//______________________.s$$$³´_______,___s$$³
//_____________________s$$$$³______.s$’___$$³
//________________,____$$$$$.______s$³____³$
//________________$___$$$$$$s_____s$³_____³,
//_______________s$___‘³$$$$$$s___$$$
//_______________$$____³$$$$$$s.__³$$s
//_______________³$.____³$$$$$$$s_.s$$$____s´
//_______________`$$.____³$$$$$$$_$$$$___s³
//________________³$$s____³$$$$$$s$$$³__s$’
//_________________³$$s____$$$$$s$$$$’__s$$
//_____________`s.__$$$$___s$$$$$$$$³_.s$$³__s
//______________$$_s$$$$..s$$$$$$$$$$$$$$³__s$
//______________s$.s$$$$s$$$$$$$$$$$$$$$$_s$$
//_____________s$$$$$$$$$$$$$$$$$$$$$$$$$$$³
//____________s$$$ssss$$$$$$$$$$$$$ssss$$$$$´
//___________$$s§§§§§§§§§s$$$$$$s§§§§§§§§s$,
//___________³§§§§§§§§§§§§§s$s§§§§§§§§§§§§s
//___________§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
//___________³§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
//____________³§§§§§§§§§§§§§§§§§§§§§§§§§§§³
//_____________³§§§§§§§§§§§§§§§§§§§§§§§§§³
//______________³§§§§§§§§§§§§§§§§§§§§§§§³
//________________³§§§§§§§§§§§§§§§§§§§³
//__________________³§§§§§§§§§§§§§§§³
//____________________³§§§§§§§§§§§³
//_______________________³§§§§§³
//_________________________³§³
