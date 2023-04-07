import 'package:flutter/material.dart';
import 'package:online_ordering_app/model/db.dart';
import 'package:online_ordering_app/widgets/custom-item-list.dart';

class SharedPage extends StatefulWidget {
  const SharedPage({super.key});

  @override
  State<SharedPage> createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomItemList(size: size, context: context, items:shared,);
  }
}
