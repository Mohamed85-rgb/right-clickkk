// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:bate5/register.dart';
import 'package:bate5/todo.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Mybutton extends StatelessWidget {
  Mybutton({Key? key, required this.color, required this.title, required this.onPressed}) : super(key: key);

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: () => onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(
                screen: SignInScreen(),
                text: "Sign in",
                color: Colors.blue),
            button(
                screen: RegistrationScreen() ,
                text: "Register",
                color: Colors.red),
            button(
                screen: MyHomePage(title: "ToDo") ,
                text: "HomePage", 
                color: Colors.yellow)
          ],
        ),
      ),
    );
  }
  button({
    required screen,
    required text,
    required color
       })
   {
    return MaterialButton( color: color, onPressed:  () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return screen;
      }));
    } ,
      child: Text(text),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
