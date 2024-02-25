import 'package:flutter/material.dart';
import 'package:project_1/product.dart';
import 'package:project_1/productBox.dart'; 
void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget { 
   // This widget is the root of your application. 
   @override 
   Widget build(BuildContext context) { 
      return MaterialApp( 
         title: 'Flutter Demo', 
         theme: ThemeData( 
            
            primarySwatch: Colors.blue, 
            useMaterial3: true,
         ), 
         
         home: MyHomePage(
            title: 'Product state demo home page',
         ),
      );
   }
}
class MyHomePage extends StatelessWidget { 
   MyHomePage({required this.title}); 
   final String title; 
   final items = Product.getProducts(); 
   
   @override 
   Widget build(BuildContext context) { 
      return Scaffold( appBar: AppBar(title: Text("Product Navigation")), 
      body: ListView.builder( 
         itemCount: items.length, 
         itemBuilder: (context, index) {
            return GestureDetector( 
               child: ProductBox(item: items[index], key: null,), 
               onTap: () { 
                  Navigator.push( 
                     context, MaterialPageRoute( 
                        builder: (context) => ProductPage(item: items[index]), 
                     ), 
                  ); 
               }, 
            ); 
         }, 
      )); 
   } 
}
