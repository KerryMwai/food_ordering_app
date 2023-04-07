import 'package:flutter/material.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/widgets/custom-item-list.dart';

class FeaturedPage extends StatefulWidget {
  const FeaturedPage({super.key});

  @override
  State<FeaturedPage> createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomItemList(size: size, context: context, items: featuredItems,);
  }
}