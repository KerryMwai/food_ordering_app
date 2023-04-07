import 'package:flutter/material.dart';
import 'package:online_ordering_app/constants/colors.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/pages/tabpages/combos.dart';
import 'package:online_ordering_app/pages/tabpages/favorites.dart';
import 'package:online_ordering_app/pages/tabpages/featured.dart';
import 'package:online_ordering_app/pages/tabpages/recommended.dart';
import 'package:online_ordering_app/pages/tabpages/shared.dart';
import 'package:online_ordering_app/widgets/custom-app-bar.dart';
import 'package:online_ordering_app/widgets/custom-card.dart';
import 'package:online_ordering_app/widgets/custom-text-field.dart';

class HomePage extends StatefulWidget {
  bool isActive = false;
  int activeIndex = 0;
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(image: "assets/images/profile.jpg", title: "SEARCH FOR \nRECIPES", iconData: Icons.menu),
                const SizedBox(height: 10),
          // Textfield for searching
                CustomTextField(size: size),
                const SizedBox(height: 10),
                const Text(
                  "Recommended",
                  style: TextStyle(
                      fontSize: 18, fontFamily: "RobotoBold", letterSpacing: 1.3),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(recommendedItems.length, (index) => CustomCard(size: size, image: recommendedItems[index]['image'], name: recommendedItems[index]['name'], currentprice: recommendedItems[index]['price'],textColor: recommendedItems[index]['text-color'], cardColor: recommendedItems[index]['card-color'] )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
          // Categories of snacks or custom tab header
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          tabTitles.length,
                          (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    widget.activeIndex = index;
                                    widget.isActive = true;
                                  });
                                },
                                child: Container(
                                    margin: const EdgeInsets.only(right: 30),
                                    child: Text(
                                      tabTitles[index],
                                      style: TextStyle(
                                          fontSize: widget.isActive &&
                                        widget.activeIndex == index?20:18,
                                          color:widget.isActive &&
                                        widget.activeIndex == index?black: black.withOpacity(0.6),
                                          fontWeight:widget.isActive &&
                                        widget.activeIndex == index?FontWeight.w600: FontWeight.w500),
                                    )),
                              ))),
                ),
                const SizedBox(
                  height: 10,
                ),
          // Custom tab pages
                IndexedStack(
                  index: widget.activeIndex,
                  children: const[
                    FeaturedPage(),
                    CombosPage(),
                    FavoritePage(),
                    RecommendedPage(),
                    SharedPage()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
