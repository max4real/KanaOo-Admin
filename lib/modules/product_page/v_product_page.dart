import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo_admin/modules/product_page/c_product_page.dart';
import 'package:kana_oo_admin/modules/product_page/product_management_drawer/product_list/v_product_list.dart';
import 'package:kana_oo_admin/modules/product_page/product_management_drawer/add_product/v_add_product.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.put(ProductController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      drawer: Drawer(
          child: ValueListenableBuilder(
        valueListenable: controller.drawerIndex,
        builder: (context, value, child) {
          return ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: secondary,
                ),
                child: const Text(
                  'Products \nManagement',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                selected: value == 0 ? true : false,
                selectedTileColor: onBackground,
                selectedColor: Colors.white,
                title: const Text('Add Product'),
                trailing: const Icon(
                  Iconsax.additem,
                  size: 20,
                ),
                onTap: () {
                  controller.drawerIndex.value = 0;
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selected: value == 1 ? true : false,
                selectedTileColor: onBackground,
                selectedColor: Colors.white,
                title: const Text('Product List'),
                trailing: const Icon(
                  Iconsax.row_vertical,
                  size: 20,
                ),
                onTap: () {
                  controller.drawerIndex.value = 1;
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selected: value == 2 ? true : false,
                selectedTileColor: onBackground,
                selectedColor: Colors.white,
                title: const Text('Categories'),
                trailing: const Icon(
                  Iconsax.category,
                  size: 20,
                ),
                onTap: () {
                  controller.drawerIndex.value = 2;
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selected: value == 3 ? true : false,
                selectedTileColor: onBackground,
                selectedColor: Colors.white,
                title: const Text('Brand'),
                trailing: const Icon(
                  Iconsax.activity,
                  size: 20,
                ),
                onTap: () {
                  controller.drawerIndex.value = 3;
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      )),
      appBar: AppBar(
        backgroundColor: onBackground,
        title: const Text(
          "Products",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Iconsax.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: controller.drawerIndex,
          builder: (context, value, child) {
            return shownePage(value);
          },
        ),
      ),
    );
  }

  Widget shownePage(int index) {
    switch (index) {
      case 0:
        return const AddProduct();
      case 1:
        return const ProductListPage();
      case 2:
        return const AddProduct();
      case 3:
        return const AddProduct();
      default:
        return const AddProduct();
    }
  }
}
