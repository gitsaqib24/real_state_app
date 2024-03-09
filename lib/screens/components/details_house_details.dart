
import 'package:flutter/cupertino.dart';
import 'package:realstate/model/house.dart';
import '../../constants/constants.dart';
import 'details_bottom_buttons.dart';

class House_Details extends StatefulWidget{
  final House house;

  House_Details(this.house);

  @override
  State<House_Details> createState() => _House_DetailsState();
}




class _House_DetailsState extends State<House_Details> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children:[
        Expanded(
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: appPadding,
                  left: appPadding,
                  bottom: appPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${widget.house.price.toStringAsFixed(3)}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text(
                            "${widget.house.address}",
                            style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              color: black.withOpacity(0.4),
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ],
                    ),
                    Text(
                      "${widget.house.time} hour ago",
                      style: TextStyle(
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: appPadding,bottom: appPadding),
                child: Text(
                  "House Information's",
                  style: TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    color: black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 130,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: appPadding,bottom: appPadding),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:black.withOpacity(0.2)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${widget.house.sqFeet.toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                            SizedBox(height: 5,),
                            Text("Square Feet",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: appPadding,bottom: appPadding),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:black.withOpacity(0.2)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${widget.house.bedRooms.toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                            SizedBox(height: 5,),
                            Text("Bed Room's",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: appPadding,bottom: appPadding),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:black.withOpacity(0.2)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${widget.house.bathRooms.toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                            SizedBox(height: 5,),
                            Text("Bath Room's",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: appPadding,bottom: appPadding),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:black.withOpacity(0.2)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${widget.house.garages.toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                            SizedBox(height: 5,),
                            Text("Garage",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black.withOpacity(0.7)),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: appPadding,
                  right: appPadding,
                  bottom: appPadding*4,
                ),
                child: Text("${widget.house.description.toString()}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: black.withOpacity(0.7),
                      height: 1.5
                  ),),
              ),

            ],
          )
      ),
        Bottom_Button(),
      ],
    );
  }
}

