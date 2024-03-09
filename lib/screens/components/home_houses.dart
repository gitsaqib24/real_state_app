
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realstate/data/data.dart';
import 'package:realstate/screens/details.dart';
import '../../constants/constants.dart';
import '../../model/house.dart';

class Houses extends StatefulWidget{
  @override
  State<Houses> createState() => _HousesState();
}









class _HousesState extends State<Houses> {


  Widget _houseBuild(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    House house = house_list[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Details_Screen(house: house);
        },));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: appPadding,
          vertical: appPadding/2,
        ),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                      height: 200,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(house.imageUrl)),
                ),
                  Positioned(
                    right: appPadding/2,
                    top:  appPadding/2,
                    child: Container(
                      child: IconButton(
                        icon: house.isFav ?
                        Icon(
                            Icons.favorite_rounded,
                            color: red,
                        ):
                        Icon(
                          Icons.favorite_border_rounded,
                          color: black,
                        ),
                        onPressed: () {
                          setState(() {
                            house.isFav =! house.isFav;
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        color: white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ]
              ),
              Row(
                children: [
                  Text(
                    "\$${house.price.toStringAsFixed(3)}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "      ${house.address}",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      color: black.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "${house.bedRooms} Bed Rooms",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      color: black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "${house.bathRooms} Bath Rooms",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      color: black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "${house.sqFeet} sqft",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      color: black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
                return _houseBuild(context,index);
            },
          itemCount: house_list.length,
        ),
    );
  }
}

