import 'package:flutter/material.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/widgets/custom-item-list.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({super.key});

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomItemList(size: size, context: context, items:recommended);

  }
}