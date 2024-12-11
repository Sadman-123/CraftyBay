import 'package:get/get.dart';
import '../presentation/state_holders/home/homecontroller.dart';
import '../presentation/state_holders/home/product_controller.dart';
class StateHoldersBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>Homecontroller());
    Get.put(ProductController());
  }
}