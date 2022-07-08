import 'package:get/get.dart';
import '../contollers/good_controller.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<GoodsController>(GoodsController());
  }
}
