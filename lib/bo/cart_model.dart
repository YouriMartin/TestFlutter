import 'package:flutter/cupertino.dart';
import 'package:oliviershop/bo/product.dart';

class CartModel extends ChangeNotifier {
  final listProducts = <Product>[];

  get count => listProducts.length;

  CartModel();

  void addItem(Product product) {
    listProducts.add(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    listProducts.remove(product);
    notifyListeners();
  }
}
