import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen>{
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20.0),
      key: formKey,
      child: Form(
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
      validator: (String? value){
        if(value != null){
         if(!value.contains('@')){
           return 'Please enter a valid email!';
         }
         if(value == ''){
           return 'Please cannot be left blank';
         }
        }

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
      validator: (String? value){
        if(value != null){
          if(value == ''){
            return 'Please cannot be left blank';
          }
          if(value.length < 4){
            return 'Password must be at least 4 characters';
          }
        }
      },
    );

  }
  Widget submitButton(){
    return ElevatedButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
      child: Text('Submit'),
      onPressed: (){
          // formKey.currentState?.reset();
        print(formKey.currentState?.validate());
        },

    );
  }
}