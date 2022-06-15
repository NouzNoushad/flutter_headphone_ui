import 'package:flutter/material.dart';

class Popular {
  final String image, title, colorText, price;
  final Color color;

  const Popular({
    required this.image,
    required this.title,
    required this.color,
    required this.colorText,
    required this.price,
  });
}

final popularLists = [
  const Popular(
    image: "purple_head.png",
    title: "Desert Sand",
    color: Colors.yellow,
    colorText: "Yellow",
    price: "300",
  ),
  const Popular(
    image: "desert_head.png",
    title: "The NBA",
    color: Colors.purple,
    colorText: "Purple",
    price: "120",
  ),
  const Popular(
    image: "blue_head.png",
    title: "Crystal Blue",
    color: Colors.blue,
    colorText: "Blue",
    price: "230",
  ),
];
