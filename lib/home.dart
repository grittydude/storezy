import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/controllers/counter_controller.dart';
import 'package:storezy/widgets/home_two.dart';

class Home extends GetView {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text('Storezy'),
      ),
      body: Center(
          child: GetBuilder<CounterController>(
        builder: (_) => Text(
          'Welcome to class ${counterController.count}',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
          print(controller.count);
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
