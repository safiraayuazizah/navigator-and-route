import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', merk: "Gulaku", price: 5000, stok: "10"),
    Item(name: 'Salt', merk: "Cap Kapal", price: 2000, stok: "5"),
    Item(name: 'Blackpaper', merk: "Ladaku", price: 3000, stok: "7"),
    Item(name: 'Soy Sauce', merk: "Bango", price: 10000, stok: "30"),
    Item(
        name: 'Chili Sauce',
        merk: "Merk Delmonter",
        price: 20000,
        stok: "stok 12")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Shop!',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Saf's Shop"),
          ),
          body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                        onTap: () {
                          //Navigator.pushNamed(context, '/item');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPage(tempItem: item)),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.all(8),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(child: Text(item.name)),
                                  Expanded(
                                      child: Text(
                                    item.price.toString(),
                                    textAlign: TextAlign.end,
                                  ))
                                ],
                              ),
                            )));
                  }))),
    );
  }
}
