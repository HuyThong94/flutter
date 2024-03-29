import 'dart:developer';
import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email= '';
  String password = '';

  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passswordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }
  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Email Address',
        hintText: 'You@example.com',
      ),
      validator: validateEmail,
      onSaved: (String? value){
        email = value!;
      },
    );
  }
  Widget passswordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
    validator: validatePassword,
      onSaved: (String? value){
        password = value!;
      },
    );
  }
  Widget submitButton(){
    return ElevatedButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
      child: Text('Submit'),
      onPressed: (){
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print('Time to post $email and $password to my API');
        }
      },
    );
  }
}