import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPageController extends GetxController {
  ValueNotifier<int> index_ = ValueNotifier(0);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> initLoad() async {}
}
