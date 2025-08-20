
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
            'The Espresso Macchiato is a shot of espresso "marked" or "stained" with a small amount of foamed milk',
        "image":"https://i.imgur.com/9zQZb9e.jpg",
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
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7z81wBaPigu-nk8ZzMYdVQM3eIEB-ViFJDA&s",
        //"categoryId": "hot",
        "available": true,
        "description": "Rich and creamy espresso with milk",
      },
      {
        "name": "Caffe Mocha",
        "type": "Deep Foam",
        "price": 4.5,
        "sizes": ['S', 'M', 'L'],
        "description": "Espresso with steamed milk and foam",
        "categories": ["Machiato"],
        "image":
            "https://i.pinimg.com/736x/67/6b/af/676bafe212b7f264aa00185d576f6d5c.jpg",
        "available": true,
        "rating": 4.5,
      },
      {
        "name": "Flat White",
        "type": "Espresso",
        "price": 3.2,
        "sizes": ['S', 'M', 'L'],
        "categories": ["Americano"],
        "description":
            "Aflat white starts with a double shot of espresso, providing a strong coffee base",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGCzJxVPkEd-X3yai3n_1GkXGD7ivhN78oA&s",
        "available": true,
        "rating": 4.6,
      },
    ];
    for (var product in products) {
      FirebaseFirestore.instance.collection("products").add(product).catchError(
        (error) {
          print('Failedtoaddproduct:$error');
        },
      );
    }
  }