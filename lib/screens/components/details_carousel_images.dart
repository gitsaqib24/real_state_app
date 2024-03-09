import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/constants.dart';

class Carousel_Images extends StatefulWidget{
  final List<String> carousel_images;
  Carousel_Images(this.carousel_images);

  @override
  State<Carousel_Images> createState() => _Carousel_ImagesState();
}




class _Carousel_ImagesState extends State<Carousel_Images> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      child: AnotherCarousel(
        dotColor: white.withOpacity(0.5),
        autoplay: false,
        animationCurve: Curves.easeInCirc,
        images: [
          AssetImage(widget.carousel_images[0]),
          AssetImage(widget.carousel_images[1]),
          AssetImage(widget.carousel_images[2]),
          AssetImage(widget.carousel_images[3]),
        ],
      ),
    );
  }
}