import 'package:flutter/cupertino.dart';
import 'package:realstate/data/data.dart';

import '../../constants/constants.dart';

class Categories extends StatefulWidget{
  @override
  State<Categories> createState() => _CategoriesState();
}










class _CategoriesState extends State<Categories> {
  int selected_Category_Index = 0;
  Widget buildCategories(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
          setState(() {
            selected_Category_Index = index;
          });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: appPadding /3),
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          width: size.width * 0.3,
          decoration: BoxDecoration(
            color: selected_Category_Index == index ? darkblue : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
                catagoryList[index],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: selected_Category_Index == index ? white : black,

              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        top: appPadding/2,
        bottom: appPadding,
      ),
      child: Container(
        height: size.height * 0.055,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          return buildCategories(context,index);
        },itemCount: catagoryList.length,
        ),
      ),
    );
  }

}