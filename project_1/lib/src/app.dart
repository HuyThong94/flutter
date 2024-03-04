import 'package:flutter/material.dart';
import 'screen/login_screen.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Login!',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
