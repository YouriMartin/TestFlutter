import 'package:flutter/material.dart';
import 'package:oliviershop/bo/product.dart';

class DetailProductPage extends StatelessWidget {
  final Product product;

  const DetailProductPage(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Hero(
                    tag: product.id, child: Image.network(product.urlImage))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.title,
                  style: Theme.of(context).textTheme.headlineSmall),
            )
          ],
        ),
      ),
    );
  }
}
