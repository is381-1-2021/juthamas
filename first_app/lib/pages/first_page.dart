import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          IconButton(
          icon: Icon(Icons.fire_hydrant),
          tooltip: 'Button1',
          onPressed: () {},
          ),
          IconButton(
          icon: Icon(Icons.fireplace),
          tooltip: 'Button2',
          onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Text('First Page'),
        ),
    );
  }
}