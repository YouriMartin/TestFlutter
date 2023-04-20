import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bo/product.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({Key? key}) : super(key: key);
  final List<Product> listProduct = [
    Product(
        1,
        "Moustache de Christophe",
        "Les supers moustaches permettant de gagner au moins 130db",
        1500,
        "https://www.comptoirdutuning.fr/upload/ext_RCW148.jpg"),
    Product(
        2,
        "Jante Alu Argent Wheels Eurosport",
        "Ajouter du style à votre 206 grâce à ces nouvelles jantes alu argent du turfu",
        200,
        "https://www.comptoirdutuning.fr/upload/wolfrace_eurosport_aero_super_t_matt_black-975x1024.png"),
    Product(
        3,
        "Inox TOCO.01.102 Silencieux arriere 1X102",
        "Silencieux arriere 1X102 ",
        400,
        "https://www.comptoirdutuning.fr/upload/TOCO.01.102.jpg"),
    Product(
        4,
        "PHARES MAZDA MX 3 91-98 ANGEL EYES CHROME",
        "PHARES MAZDA MX 3 91-98 ANGEL EYES CHROME (la paire) [eclcdt_tec_LPMA01]",
        297.79,
        "https://www.comptoirdutuning.fr/upload/thumbs/TT_LPMA01-be42.jpg"),
    Product(
        5,
        "Filtre à air PIPERCROSS PX1403 ",
        "Modèle de véhicule compatible : Alfa Romeo 166 2.4 JTD (all) année 10/98 ",
        56.50,
        "https://www.comptoirdutuning.fr/upload/thumbs/PipercrossRond-4639.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Olivier shop"),
        ),
        body: ListView.builder(
          itemCount: listProduct.length,
          itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Card(
                child: ListTile(
                  onTap: () => context.go('/detail', extra: listProduct[index]),
                  leading: Hero(
                      tag: listProduct[index].id,
                      child: Image.network(
                        listProduct[index].urlImage,
                        width: 100,
                        height: 100,
                      )),
                  title: Text(listProduct[index].title),
                  subtitle: Text(
                    "${listProduct[index].price} €",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Text(
                      'ajouter'.toUpperCase(),
                    ),
                  ),
                ),
              )),
        ));
  }
}
