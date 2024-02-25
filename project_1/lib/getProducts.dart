import 'main.dart';
import 'product.dart';

 List<Product> getProducts() {
   List<Product> items = <Product>[]; 
   
   items.add(
      Product( 
         "Pixel", 
         "Pixel is the most feature-full phone ever", 800, 
         "pixel.png"
      )
   ); 
   items.add(
      Product(
        "Laptop", 
        "Laptop is most productive development tool", 2000,
        " laptop.png"
      )
   ); 
   items.add(
      Product( 
         "Tablet", 
         "Tablet is the most useful device ever for meeting", 
         1500, 
         "tablet.png"
      )
   ); 
   items.add(
      Product( 
         "Pendrive", 
         "Pendrive is useful storage medium",
         100, 
         "pendrive.png"
      )
   ); 
   items.add(
      Product( 
         "Floppy Drive", 
         "Floppy drive is useful rescue storage medium", 
         20, 
         "floppy.png"
      )
   ); 
   return items; 
}