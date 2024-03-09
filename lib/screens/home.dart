
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/screens/components/home_Categories.dart';

import 'components/home_BottomButtons.dart';
import 'components/home_Custom_appbar.dart';
import 'components/home_houses.dart';

class Home_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
          children: [
            Custom_AppBar(),
            Categories(),
            Houses(),
          ],
        ),
          BottomButtons(),
      ]
      ),
    );
  }

}








