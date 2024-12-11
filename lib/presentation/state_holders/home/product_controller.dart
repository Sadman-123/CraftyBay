import 'package:get/get.dart';
class ProductController extends GetxController {
  RxInt qty = 1.obs;
  RxDouble productPrice = 0.0.obs;
  RxDouble totalPrice = 0.0.obs;
  void setProductPrice(double price) {
    productPrice.value = price;
    calculateTotal();
  }
  void calculateTotal() {
    totalPrice.value = productPrice.value * qty.value;
  }
  void increase_product() {
    qty.value += 1;
    calculateTotal();
  }
  void decrease_product() {
    if (qty.value > 1) {
      qty.value -= 1;
      calculateTotal();
    }
  }
  void clearcal()
  {
     productPrice.value = 0.0;
     totalPrice.value=0.0;
     qty.value = 1;
  }
}