import 'package:flutter/material.dart';

class Fifthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: 
          List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/${index+1}');
              },
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Item ${index+1}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            );
          }),
      ),
    );
  }
}