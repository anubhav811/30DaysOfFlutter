import 'package:flutter/material.dart';
import 'package:fluttter_demo/models/catalog.dart';
import 'package:fluttter_demo/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Anubhav";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }

  bringVeggies({required bool thaila, int rupees = 100}) {
    print("I have $rupees rupees");
  }
}
