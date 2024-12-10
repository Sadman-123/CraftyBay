import 'package:craftybay/app/app.dart';
import 'package:craftybay/home_screens/controllers/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  Get.lazyPut(()=>Homecontroller());
  runApp(CraftyBay());
}