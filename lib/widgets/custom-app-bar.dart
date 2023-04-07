import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  String image,title;
  IconData iconData;
  CustomAppBar({super.key, required this.image, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Icon(
                    iconData,
                    color: black,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage:  AssetImage(image),
                    )
                ],
              ),
              const SizedBox(height: 10),
               Text(
                title,
                style: const TextStyle(
                    color: black,
                    fontFamily: "RobotoBold",
                    fontSize: 22,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w900),
              ),
      ],
    );
  }
}