import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    final itemArgs = this.item;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: 'imagehero',
                child: Image.asset(
                  itemArgs.foto_produk.toString(),
                  fit: BoxFit.fill,
                  width: double.infinity,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rp' + itemArgs.price.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    itemArgs.name.toString().toUpperCase(),
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('Rating : ' + itemArgs.rating.toString()),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Text('Krisna Andika / 2241720118'),
    );
  }
}
