
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realstate/data/data.dart';
import 'package:realstate/model/house.dart';
import '../constants/constants.dart';
import 'components/details_carousel_images.dart';
import 'components/details_custom_appbar.dart';
import 'components/details_house_details.dart';

class Details_Screen extends StatefulWidget{
  final House house;

  const Details_Screen({super.key, required this.house});
  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}



class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
            Stack(
                children:[
                  Carousel_Images(widget.house.moreImageUrl),
                  Detail_Custom_App_Bar(),
                ]
            ),
          House_Details(widget.house),

        ],
      ),
    );
  }
}





