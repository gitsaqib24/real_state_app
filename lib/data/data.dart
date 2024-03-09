
import 'package:realstate/model/house.dart';

final _house1 = House(
    //imageUrl:
    "assets/images/h1.png",
    //address:
    "Khan Colony Gulberg 2",
    //description:
    "this is the beautiful house "
        "which created by turkish"
        " architect engineers which "
        "are well telended and gold"
        " modelist in the best design"
        " house in 22 countries",
    //price:
    9000,
    //bedRooms:
    8,
    //bathRooms:
    2,
    //sqFeet:
    40.7,
    //garages
    2,
    //time
    20,
    //moreImageUrl
    [
      "assets/images/h1.png",
      "assets/images/h2.jpeg",
      "assets/images/h3.jpg",
      "assets/images/h4.jpg",
      "assets/images/h5.jpg",
    ],
    //isFav
    false
);
final _house2 = House(
  //imageUrl:
    "assets/images/h2.jpeg",
    //address:
    "Barkat Market",
    //description:
    "this is the beautiful house "
        "which created by turkish"
        " architect engineers which "
        "are well telended and gold"
        " modelist in the best design"
        " house in 22 countries",
    //price:
    12000,
    //bedRooms:
    5,
    //bathRooms:
    2,
    //sqFeet:
    50.5,
    //garages
    1,
    //time
    20,
    //moreImageUrl
    [
      "assets/images/h1.png",
      "assets/images/h2.jpeg",
      "assets/images/h3.jpg",
      "assets/images/h4.jpg",
      "assets/images/h5.jpg",
      "assets/images/h1.png",
    ],
    //isFav
    false
);
final _house3 = House(
  //imageUrl:
    "assets/images/h3.jpg",
    //address:
    "Model Town",
    //description:
    "this is the beautiful house "
        "which created by turkish"
        " architect engineers which "
        "are well telended and gold"
        " modelist in the best design"
        " house in 22 countries",
    //price:
    14000,
    //bedRooms:
    3,
    //bathRooms:
    2,
    //sqFeet:
    70.7,
    //garages
    1,
    //time
    20,
    //moreImageUrl
    [
      "assets/images/h1.png",
      "assets/images/h2.jpeg",
      "assets/images/h3.jpg",
      "assets/images/h4.jpg",
      "assets/images/h5.jpg",
      "assets/images/h1.png",
    ],
    //isFav
    false
);
final _house4 = House(
  //imageUrl:
    "assets/images/h4.jpg",
    //address:
    "Shahdra 1",
    //description:
    "this is the beautiful house "
        "which created by turkish"
        " architect engineers which "
        "are well telended and gold"
        " modelist in the best design"
        " house in 22 countries",
    //price:
    7500,
    //bedRooms:
    7,
    //bathRooms:
    2,
    //sqFeet:
    34.2,
    //garages
    2,
    //time
    20,
    //moreImageUrl
    [
      "assets/images/h1.png",
      "assets/images/h2.jpeg",
      "assets/images/h3.jpg",
      "assets/images/h4.jpg",
      "assets/images/h5.jpg",
      "assets/images/h1.png",
    ],
    //isFav
    false
);


final List<House> house_list = <House>[
  _house1,
  _house2,
  _house3,
  _house4,
];

List<String> catagoryList = [
  "<\$220.00",
  "For Sale",
  "3-4 BedRooms",
  "Garages",
  "Modular Kitchen",
];