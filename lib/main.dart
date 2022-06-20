// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:bate5/todo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'wel.log.reg.cons/WelcomeScreen.dart';
//import 'package:flutter_new_template/view/pages/HomePage.dart';
//import 'payment/my fatoorah.dart';//


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}