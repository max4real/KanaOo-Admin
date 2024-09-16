import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo_admin/modules/home_page/v_home_page.dart';
import 'package:get/get.dart';
import 'package:kana_oo_admin/modules/main_page/c_main_page.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainPageController controller = Get.put(MainPageController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            ValueListenableBuilder(
              valueListenable: controller.index_,
              builder: (context, value, child) {
                return shownePage(value);
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: onBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  height: 60,
                  child: ValueListenableBuilder(
                    valueListenable: controller.index_,
                    builder: (context, value, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            splashRadius: 5,
                            isSelected: value == 0 ? true : false,
                            selectedIcon: Icon(
                              Iconsax.home_1,
                              color: secondary,
                            ),
                            onPressed: () {
                              controller.index_.value = 0;
                            },
                            icon: const Icon(
                              Iconsax.home,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            isSelected: value == 1 ? true : false,
                            selectedIcon: Icon(
                              Iconsax.shopping_bag,
                              color: secondary,
                            ),
                            onPressed: () {
                              controller.index_.value = 1;
                            },
                            icon: const Icon(
                              Iconsax.shopping_bag,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            isSelected: value == 2 ? true : false,
                            selectedIcon: Icon(
                              Iconsax.heart,
                              color: secondary,
                            ),
                            onPressed: () {
                              controller.index_.value = 2;
                            },
                            icon: const Icon(
                              Iconsax.heart,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            isSelected: value == 3 ? true : false,
                            selectedIcon: Icon(
                              Iconsax.setting,
                              color: secondary,
                            ),
                            onPressed: () {
                              controller.index_.value = 3;
                            },
                            icon: const Icon(
                              Iconsax.setting,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget shownePage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const HomePage();
      case 2:
        return const HomePage();
      case 3:
        return const HomePage();
      default:
        return const HomePage();
    }
  }
}
