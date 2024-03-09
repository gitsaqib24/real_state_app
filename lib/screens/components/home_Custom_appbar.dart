import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/constants/constants.dart';

class Custom_AppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          left: appPadding,
          right: appPadding,
          top: appPadding*2,
      ),
      child: Container(
        height: size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 50,width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: black.withOpacity(0.4)),
                  ),
                  child: Icon(Icons.sort_rounded),
                ),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: black.withOpacity(0.4)),
                    ),
                    child: Icon(Icons.insights_rounded),
                  ),
              ],),
              SizedBox(height: 5,),
              Text("City",style: TextStyle(
                color: black,
                fontSize: 18,
              ),),
              const Text("Dubai(UAE)",style: TextStyle(
              color: Colors.black,
              fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),
              Divider(),
          ],
        ),
      ),
    );
  }

}

