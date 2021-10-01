import 'package:flutter/material.dart';
import 'package:midterm_app/constants.dart';
import 'package:midterm_app/screens/home/home_screen.dart';

void main() {
  runApp(midterm_app());
}
class midterm_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cat What!',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: HomeScreen()
    );
  }
}

