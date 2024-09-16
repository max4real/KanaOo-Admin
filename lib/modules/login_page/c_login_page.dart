import 'package:flutter/material.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  DataController dataController = Get.find();
  TextEditingController phoneNumber = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");
  ValueNotifier<bool> xFecthing = ValueNotifier(false);
  ValueNotifier<bool> xObscured = ValueNotifier(true);
}
