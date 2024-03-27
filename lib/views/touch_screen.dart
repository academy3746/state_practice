import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_practice/controllers/home_cont.dart';

class TouchScreen extends StatelessWidget {
  const TouchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController cont = Get.find();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${cont.count}'),
      ),
    );
  }
}
