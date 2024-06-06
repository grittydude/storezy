import 'package:get/get.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/services/provider.dart';
import 'package:storezy/services/repository.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController(
        repository: ReviewRepository(storeProvider: StoreProvider())));
  }
}
