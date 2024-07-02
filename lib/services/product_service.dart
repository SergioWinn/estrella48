import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estrella48/models/product.dart';

class ProductService {
  final CollectionReference _productCollection = FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product) async {
    await _productCollection.add({
      'name': product.name,
      'description': product.description,
      'price': product.price,
      'category': product.category,
    });
  }

  Future<void> updateProduct(Product product) async {
    await _productCollection.doc(product.id).update({
      'name': product.name,
      'description': product.description,
      'price': product.price,
      'category': product.category,
    });
  }

  Future<void> deleteProduct(String id) async {
    await _productCollection.doc(id).delete();
  }

  Future<List<Product>> fetchProducts() async {
    QuerySnapshot querySnapshot = await _productCollection.get();
    return querySnapshot.docs.map((doc) => Product.fromDocument(doc)).toList();
  }
}
