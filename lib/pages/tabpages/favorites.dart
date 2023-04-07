import 'package:flutter/material.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/widgets/custom-item-list.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomItemList(size: size, context: context, items: favorites,);
  }
}