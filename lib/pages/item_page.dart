import 'package:flutter/cupertino.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saf's Shop"),
        centerTitle: true,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Text(
            "\n Nama Barang = " +
                tempItem.name +
                "\n Merk Barang = " +
                tempItem.merk +
                "\n Harga =  " +
                tempItem.price.toString() +
                "\n Stok =  " +
                tempItem.stok,
          )),
    );
  }
}
