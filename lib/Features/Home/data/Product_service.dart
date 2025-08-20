import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffe_shop_project/Features/Home/data/models/product_model.dart';
import 'package:firebase_core/firebase_core.dart';

class ProductService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<List<Product>> getproducts() async {
    try {
      final snapShot = await firestore.collection('products').get();
      return snapShot.docs.map((doc) {
        return Product.fromJson(doc.data());
      }).toList();
    } catch (e) {
      print("Error fetching products: $e");
      return [];
    }
  }

}
