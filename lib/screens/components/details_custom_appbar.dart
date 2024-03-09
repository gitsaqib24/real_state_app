
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class Detail_Custom_App_Bar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding,
      ),
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: white.withOpacity(0.4)),
                ),
                child: const Icon(Icons.arrow_back_rounded,color: white,),
              ),
            ),
            Container(
              height: 50,width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: white.withOpacity(0.4)),
              ),
              child: const Icon(Icons.favorite_border_rounded,color: white,),
            ),
          ],),
      ),
    );
  }
}