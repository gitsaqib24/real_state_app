import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Bottom_Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          left: appPadding*1.5,
          right: appPadding*1.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: darkblue,
              boxShadow:[BoxShadow(
                color: black.withOpacity(0.7),
                blurRadius: 10,
                offset: Offset(0,10),
              )],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  size: 20,
                  color: white,
                ),
                Text(
                  " Message",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: darkblue,
              boxShadow:[BoxShadow(
                color: black.withOpacity(0.7),
                blurRadius: 10,
                offset: Offset(0,10),
              )],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call,
                  size: 20,
                  color: white,
                ),
                Text(
                  " Call",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}