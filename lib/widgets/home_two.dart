import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home 2'),
      ),
      body: Center(
        child: GestureDetector(onTap: () => Get.back(), child: Text('Home 2')),
      ),
    );
  }
}
