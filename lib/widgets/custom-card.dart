import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';

class CustomCard extends StatelessWidget {
  String image, name;
  double currentprice;
  Color textColor;
  Color cardColor;
  CustomCard(
      {super.key,
      required this.size,
      required this.image,
      required this.name,
      required this.currentprice,
      required this.textColor,
      required this.cardColor});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return size.height<640?Container(
      margin: const EdgeInsets.only(right: 15,),
      width: size.width * 0.3,
      height: size.height * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: cardColor),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: size.width * 0.4,
            height: size.height * 0.3,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Center(
                child: Container(
              padding: EdgeInsets.all(5),
              width: size.width * 0.2,
              height: size.width * 0.2,
              decoration: const BoxDecoration(
                color: white,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: size.width * 0.15,
                height: size.width * 0.15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\$ $currentprice",
            style: TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ):Container(
      margin: const EdgeInsets.only(right: 15),
      width: size.width * 0.3,
      height: size.height * 0.24,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: cardColor),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: size.width * 0.3,
            height: size.height * 0.12,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Center(
                child: Container(
              padding: EdgeInsets.all(5),
              width: size.width * 0.2,
              height: size.width * 0.2,
              decoration: const BoxDecoration(
                color: white,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: size.width * 0.15,
                height: size.width * 0.15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "\$ $currentprice",
            style: TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
