import 'package:get/get.dart';
import 'package:storezy/widgets/home_two.dart';

class CounterController extends GetxController {
  var count = 0; //observable variable

  void increment() {
    count++;
    update();
    Get.to(Home2()); //manually trigger the UI update
  }
}
