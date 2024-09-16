import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kana_oo_admin/modules/main_page/v_main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const MainPage(),
  ));
}
