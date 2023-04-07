import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return size.width>412
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            width: (size.width)*0.9,
            decoration: BoxDecoration(
                color: greyblue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              cursorColor: black,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 40,
                    color: black.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  hintText: "Search"),
            ))
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            width: size.width,
            decoration: BoxDecoration(
                color: greyblue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              cursorColor: black,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 50,
                    color: black.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  hintText: "Search"),
            ));
  }
}
