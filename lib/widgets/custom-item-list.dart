import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';
import 'package:online_ordering_app/pages/detail-page.dart';

class CustomItemList extends StatelessWidget {

  CustomItemList(
      {super.key,
      required this.size,
      required this.context,
      required this.items});

  final Size size;
  final BuildContext context;
  List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.22,
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(
                items.length,
                (index) => Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: size.width * 0.27,
                          height: size.width * 0.34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: pink.withOpacity(0.7)),
                          child: Center(
                            child: Image(
                              image: AssetImage(items[index]["image"]),
                              width:size.width>412? 100:80,
                              height: size.width>412?100:80,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: size.width * 0.34,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[index]["name"],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: black.withOpacity(0.6),
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 5),
// Rating section
                              Row(
                                children: List.generate(
                                    items[index]['rating'],
                                    (index) => const Icon(
                                          Icons.star,
                                          color: orange,
                                        )),
                              ),
                              const SizedBox(height: 5),
//Pricing section                              
                              Row(
                                children: [
                                  Text(
                                "\$ ${items[index]['current-price']}",
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: pink,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(width: 20,),
                                Text(
                                "\$ ${items[index]['previous-price']}",
                                style:  TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 2.0,
                                    fontSize: 15,
                                    color: black.withOpacity(0.6),
                                    fontWeight: FontWeight.w700),
                              ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: SizedBox(
                          height: size.width * 0.34,
                          child: Column(
                            children: [
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailPage(image: items[index]['image'],name: items[index]['name'], price: double.parse(items[index]['current-price'].toString()))));
                                    },
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle, color: red),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    )))),
      ),
    );
  }
}
