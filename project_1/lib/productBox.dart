import 'package:flutter/material.dart';
import 'package:project_1/product.dart';
import 'package:project_1/ratingBox.dart';

class ProductBox extends StatelessWidget {    
   ProductBox({required Key key, required this.item}) : super(key: key); 
   final Product item; 
   
   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), 
         height: 140, 
         child: Card( 
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: <Widget>[ 
                  Image.asset("assets/appimages/" + this.item.image), 
                  Expanded(
                     child: Container(
                        padding: EdgeInsets.all(5), 
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                           children: <Widget>[
                              Text(this.item.name, 
                              style: TextStyle(fontWeight: FontWeight.bold)), 
                              Text(this.item.description), 
                              Text("Price: " + this.item.price.toString()), 
                              RatingBox(), 
                           ], 
                        )
                     )
                  )
               ]
            ), 
         )
      ); 
   }
}