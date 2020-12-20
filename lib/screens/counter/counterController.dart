import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt _counter = 0.obs;
  int get counter => _counter.value;
  // set setCounter(int value) {
  //   _counter = value;
  // }
  void incrementCounter() {
    _counter.value++;
    // update();
  }

  void decrementCounter() {
    _counter.value--;
    // update();
  }

  Size getScreenSize() {
    double height = Get.height;
    double width = Get.width;

    return Size(width, height);
  }
}
