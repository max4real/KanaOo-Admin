import 'package:flutter/material.dart';
import 'package:kana_oo_admin/modules/login_page/v_login_page.dart';
import 'package:get/get.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const LoginPage(),
  ));
  Get.put(DataController());
}
