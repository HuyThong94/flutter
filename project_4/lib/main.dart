import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'First App',
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent.shade400),
         useMaterial3: true,
       ),
      home: const MyHomepage(title: 'First App!'),
    );
  }
}

class MyHomepage extends StatefulWidget{
  final String title;
  const MyHomepage({super.key, required this.title});
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('THis is a snackbar!')));
              },
              icon: const Icon(Icons.engineering),
          ),
        ],
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black54, Colors.orangeAccent, ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text('Hello World!', style: TextStyle(color: Colors.white, fontSize: 30),),
        ),
      ),
    );
  }
}