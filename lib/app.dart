import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oliviershop/bo/product.dart';
import 'package:oliviershop/screen/detail_product_page.dart';
import 'package:oliviershop/screen/list_product_page.dart';

import 'screen/home_page.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Olivier Shop',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => ListProductPage(), routes: [
      GoRoute(
          path: 'detail',
          builder: (context, state) =>
              DetailProductPage(state.extra as Product),
          routes: [
            GoRoute(
                path: 'cartPage',
                builder: (contex, state) => const MyHomePage(title: "Panier"))
          ])
    ])
  ]);
}
