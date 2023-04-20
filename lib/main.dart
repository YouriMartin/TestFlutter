import 'package:flutter/material.dart';
import 'package:oliviershop/bo/cart_model.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: MyApp(),
  ));
}
