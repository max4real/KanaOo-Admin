import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20, vertical: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      // controller: controller.phoneNumber,
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                      onTapOutside: (event) {
                        dismissKeyboard();
                      },
                      cursorWidth: 1,
                      cursorColor: secondary,
                      cursorHeight: 15,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: onBackground,
                          hintText: "Product Name",
                          hintStyle: const TextStyle(color: Colors.white60)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      // controller: controller.phoneNumber,
                      keyboardType: TextInputType.name,
                      maxLines: 5,
                      minLines: 1,
                      textInputAction: TextInputAction.newline,
                      onTapOutside: (event) {
                        dismissKeyboard();
                      },
                      cursorWidth: 1,
                      cursorColor: secondary,
                      cursorHeight: 15,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: onBackground,
                          hintText: "Label",
                          hintStyle: const TextStyle(color: Colors.white60)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Images"),
                    SizedBox(
                      height: 90,
                      child: GridView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                childAspectRatio: 1),
                        itemBuilder: (context, index) {
                          return const Placeholder();
                        },
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
