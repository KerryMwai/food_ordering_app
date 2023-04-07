import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/widgets/custom-app-bar.dart';

class DetailPage extends StatefulWidget {
  String image;
  String name;
  double price;
  int _totaItems = 1;
  double _totalPrice = 0;
  DetailPage(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomAppBar(
                image: "assets/images/shopping-cart.jpg",
                title: "SUPER \n${widget.name.toUpperCase()}",
                iconData: Icons.menu,
              ),
              // The snack image section
              const SizedBox(height: 10),
              SizedBox(
                height: size.height * 0.3,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.4,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(widget.image),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Expanded(
                        child: SizedBox(
                      height: size.height * 0.3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Icon(Icons.favorite_border, color: pink),
                            SizedBox(
                              height: 40,
                            ),
                            Icon(Icons.share_sharp, color: pink),
                          ]),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Buttons for increasing and decreasing the items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget._totalPrice == 0
                        ? "\$ ${widget.price}"
                        : "\$ ${widget._totalPrice}",
                    style: TextStyle(
                        fontSize: 18,
                        color: black.withOpacity(0.7),
                        fontWeight: FontWeight.w600),
                  ),
                  // Buttons Operations begins here
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width:
                        size.width > 412 ? size.width * 0.5 : size.width * 0.62,
                    decoration: BoxDecoration(
                        color: orange, borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      // Increments and decrement of item
                      Container(
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (widget._totaItems == 1) {
                                      return;
                                    }
                                    _decrementCounter();
                                    _computeTotal();
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: black,
                                )),
                            Text(
                              widget._totaItems.toString(),
                              style:
                                  const TextStyle(color: black, fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (widget._totaItems > 9) {
                                      return;
                                    }
                                    _incrementCounter();
                                    _computeTotal();
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: black,
                                ))
                          ],
                        ),
                      ),
                      // Add to cart button
                      TextButton(
                          onPressed: () {
                            setState(() {
                              _addTocart();
                            });
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: white),
                          ))
                    ]),
                  ),
                ],
              ),
              // Featured section
              const Text(
                "FEATURED",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              // Featured items
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: GridView.builder(
                    itemCount: featuredItems.length,
                    scrollDirection:
                        size.height < 640 ? Axis.vertical : Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: size.height < 640 ? 3 / 2 : 3 / 8),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                width: size.width * 0.2,
                                height: size.width * 0.3,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      pink.shade100,
                                      pink.shade300,
                                      red.shade400
                                    ]),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Image(
                                    image: AssetImage(
                                        featuredItems[index]['image']),
                                    height: size.width * 0.12,
                                    width: size.width * 0.14,
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width > 412 ? 20 : 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    featuredItems[index]['name'],
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: black.withOpacity(0.6)),
                                  ),
                                  Text(
                                    "\$ ${featuredItems[index]['current-price']}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: red.withOpacity(0.8)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ]),
          )),
    ));
  }

  void _incrementCounter() {
    widget._totaItems++;
  }

  void _decrementCounter() {
    widget._totaItems--;
  }

  void _computeTotal() {
    widget._totalPrice = widget._totaItems * widget.price;
  }

  void _addTocart() {
    widget._totaItems = 1;
    widget._totalPrice = 0;
  }
}
