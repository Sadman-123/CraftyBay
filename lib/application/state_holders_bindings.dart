import 'package:craftybay/presentation/state_holders/home/logincontroller.dart';
import 'package:get/get.dart';
import '../presentation/state_holders/home/homecontroller.dart';
import '../presentation/state_holders/home/product_controller.dart';
class StateHoldersBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>Homecontroller());
    Get.lazyPut(()=>ProductController());
    Get.lazyPut(()=>Logincontroller());
  }
}