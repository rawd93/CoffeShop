
import 'package:cloud_firestore/cloud_firestore.dart';
Future<void> addproducts() async {
  List<Map<String, dynamic>> products = [
    {
      'name': 'Machiato',
      "type": "NesCafe",
      "price": 8.2,
      "sizes": ['S', 'M', 'L'],
      "rating": 4.9,
      "categories": ['Machiato'],
      "description":
          'The Espresso Macchiato is a shot of espresso "marked" with foamed milk',
      "image": "https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG",
      "available": true,
    },
    {
      "name": "Latte",
      "price": 6.3,
      "rating": 4.7,
      "type": "IceLatte",
      "sizes": ['S', 'M', 'L'],
      "categories": ["Latte"],
      "image":
          "https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg", 
      "available": true,
      "description": "Rich and creamy espresso with milk",
    },
    {
      "name": "Caffe Mocha",
      "type": "Deep Foam",
      "price": 4.5,
      "sizes": ['S', 'M', 'L'],
      "description": "Espresso with steamed milk and foam",
      "categories": ["Mocha"],
      "image":
          "https://images.pexels.com/photos/434213/pexels-photo-434213.jpeg", 
      "available": true,
      "rating": 4.5,
    },
    {
      "name": "Flat White",
      "type": "Espresso",
      "price": 3.2,
      "sizes": ['S', 'M', 'L'],
      "categories": ["Flat White"],
      "description":
          "A flat white starts with a double shot of espresso, providing a strong coffee base",
      "image":
          "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg", 
      "available": true,
      "rating": 4.6,
    },
  ];

  for (var product in products) {
    FirebaseFirestore.instance.collection("products").add(product).catchError(
      (error) {
        print('Failed to add product: $error');
      },
    );
  }
}
