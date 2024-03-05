import 'package:flutter/material.dart';
import '../src/screens/login_screen.dart';

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login!',
      home: Scaffold(
        appBar: 'Login Home!',
        body: LoginScreen(),
      ),
    );
  }
}
class