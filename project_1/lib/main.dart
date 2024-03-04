import 'package:flutter/material.dart';

void main(){
   var app = MaterialApp(
      home: Scaffold(
         floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
               print('in here!');
            },
         ),
         appBar: AppBar(
            title: Text('Lets see some images'),
         ),
      ),
   );
   runApp(app);
}
