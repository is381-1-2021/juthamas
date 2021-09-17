import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( 
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
          bottom: TabBar(
            tabs:[
              Tab(
                icon: Icon(Icons.cabin),
                 ),
              Tab(
                icon: Icon(Icons.cloud),
                ),
              Tab(
                icon: Icon(Icons.shower),
                ),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Cabin'),
            ),
            Center(
              child: Text('Cloud'),
            ),
            Center(
              child: Text('Rainy'),
            ),
          ],
        ),
      ),
    );
  }  
}