import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:midterm_app/constants.dart';
import 'package:midterm_app/screens/components/title_with_more_bbtn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Special Needs",press: () {}),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset(
                "assets/A-Cat.jpg",
                width: 150,
              ),
              ],
              ),
          ) 
        ],
      ),
    );
  }
}


