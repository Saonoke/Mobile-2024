import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        foto_produk: 'images/sugar.jpg',
        stok: 10,
        rating: 4),
    Item(
        name: 'Salt',
        price: 2000,
        foto_produk: 'images/salt.jpg',
        stok: 10,
        rating: 4)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shopping List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Expanded(child: shoppingList()),
            ],
          )),
      bottomSheet: const Text('Krisna Andika / 2241720118'),
    );
  }

  Container shoppingList() {
    return Container(
      // margin: const EdgeInsets.only(top: 25, right: 10, left: 10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        padding: const EdgeInsets.symmetric(vertical: 2),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              context.go('/item', extra: item);
            },
            child: Card(
              child: Container(
                // margin: const EdgeInsets.all(8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        child: Image.asset(
                          item.foto_produk.toString(),
                          fit: BoxFit.fill,
                        )),
                    Expanded(
                      // color: Colors.black,

                      // padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text(
                              item.name.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: Text(
                              'Price : ' + item.price.toString(),
                              textAlign: TextAlign.end,
                            )),
                            Container(
                                child: Text(
                              'Stok: ' + item.stok.toString(),
                              textAlign: TextAlign.end,
                            )),
                            Container(
                                child:
                                    Text('Rating : ' + item.rating.toString()))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
