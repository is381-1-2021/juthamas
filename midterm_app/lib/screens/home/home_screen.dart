import 'package:flutter/material.dart';
import 'package:midterm_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/pet-shop.png",
          width: 120,
          ),
        onPressed: () {},
      ) ,
        );
  }
}