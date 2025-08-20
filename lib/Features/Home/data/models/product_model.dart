class Product {
  final String name;
  final String type;
  final num price;
  final String description;
  final List<String> sizes;
  final String image;
  final num rating;
  final bool available;
  final  List<String> category;

  Product({
    required this.name,
    required this.type,
    required this.price,
    required this.description,
    required this.sizes,
    required this.image,
    required this.rating,
    required this.available,
    required this.category,
     
  });
  factory Product.fromJson(Map<String, dynamic> map) {
    //لتحويل البيانات القادمة من Firestore إلى كائن Dart.
    //تحويل ماب من فاير ستور لكائن تستخدم ع تستخدم لجلب البيانات
    return Product(
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      price: num.tryParse(map['price'].toString())??0,
      //map['price'] ?? 0,
      description: map['description'] ?? '',
      sizes: List<String>.from(map['sizes'] ?? []),
      image: map['image'] ?? '',
      rating: num.tryParse(map['rating'].toString())??0,
     // map['rating'] ?? 0,
      available: map['available'] ?? false,
      category:List<String>.from(map['categories']??[]),
      // map['categories']??[],
      
    );
  }
  Map<String, dynamic> toJson() {
    // حويل كائن (Object) من النوع Product إلى خريطة (Map) يمكن إرسالها إلى Firebase.
    return {
      'name': name,
      'type': type,
      'price': price,
      'description': description,
      'sizes': sizes,
      'image': image,
      'rating': rating,
      'available': available,
      'categories':category,
    };
  }
}
