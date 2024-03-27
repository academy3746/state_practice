import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_practice/controllers/home_cont.dart';
import 'package:state_practice/views/touch_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = Get.put(HomeScreenController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Clicks: ${cont.count}'),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(const TouchScreen()),
          child: const Text('Navigate to Touch Screen'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cont.increment,
        child: const Icon(
          Icons.add,
          size: 24,
        ),
      ),
    );
  }
}
