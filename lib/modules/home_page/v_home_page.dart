import 'package:flutter/material.dart';
import 'package:kana_oo_admin/modules/home_page/c_home_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageCntroller controller = Get.put(HomePageCntroller());
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text("click me"),
        ),
      ],
    ));
  }
}
