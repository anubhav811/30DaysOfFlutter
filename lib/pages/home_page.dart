import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Anubhav";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: Center(

          child: Container(
              child: Text("Welcome to $days days of Flutter by $name")
          ),
        ),
        drawer: Drawer(),
    );
  }

  bringVeggies({required bool thaila , int rupees = 100 }){
    print("I have $rupees rupees");
  }
}