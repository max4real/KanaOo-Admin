import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:kana_oo_admin/modules/product_page/product_management_drawer/add_product/c_add_product.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    AddProductController controller = Get.put(AddProductController());
    return Scaffold(
      backgroundColor: background,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Container(
            // width: double.infinity,
            height: 800,
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
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
                  // makeTagField(),
                  const SizedBox(height: 20),
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
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Category"),
                      DropdownMenu(
                        controller: controller.txtCategory,
                        width: double.infinity,
                        menuHeight: 200,
                        inputDecorationTheme: InputDecorationTheme(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: onBackground,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        // enableFilter: true,
                        // enableSearch: true,
                        // requestFocusOnTap: true,
                        onSelected: (value) {
                          // print(value);
                        },
                        dropdownMenuEntries: controller.categoryItems.map(
                          (String items) {
                            return DropdownMenuEntry(
                              leadingIcon: const Icon(Icons.remove),
                              value: items,
                              label: items,
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sub Category"),
                      DropdownMenu(
                        controller: controller.txtSubCategory,
                        width: double.infinity,
                        menuHeight: 200,
                        inputDecorationTheme: InputDecorationTheme(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: onBackground,
                        ),
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        // enableFilter: true,
                        // enableSearch: true,
                        // requestFocusOnTap: true,
                        onSelected: (value) {
                          // print(value);
                        },
                        dropdownMenuEntries: controller.subcategoryItems.map(
                          (String items) {
                            return DropdownMenuEntry(
                              leadingIcon: const Icon(Icons.remove),
                              value: items,
                              label: items,
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    // controller: controller.phoneNumber,
                    keyboardType: TextInputType.number,
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
                        suffixText: 'MMK',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: onBackground,
                        hintText: "Price (MMK)",
                        hintStyle: const TextStyle(color: Colors.white60)),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        List<String> adf =
                            controller.stringTagController.getTags!;
                        for (var element in adf) {
                          print(element);
                        }
                        // print(controller.txtDropMenu.text);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: background,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                      ),
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeTagField() {
    AddProductController controller = Get.find();

    return TextFieldTags<String>(
      textfieldTagsController: controller.stringTagController,
      initialTags: controller.initialTags,
      textSeparators: const [' ', ','],
      letterCase: LetterCase.normal,
      validator: (String tag) {
        if (tag == 'php') {
          return 'No, please just no';
        } else if (controller.stringTagController.getTags!.contains(tag)) {
          return 'You\'ve already entered that';
        }
        return null;
      },
      inputFieldBuilder: (context, inputFieldValues) {
        return TextField(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          onTap: () {
            controller.stringTagController.getFocusNode?.requestFocus();
          },
          onTapOutside: (event) {
            dismissKeyboard();
          },
          controller: inputFieldValues.textEditingController,
          focusNode: inputFieldValues.focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: onBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            isDense: true,
            helperText: 'Enter Product Tags',
            helperStyle: const TextStyle(
              color: Colors.black,
            ),
            hintText: inputFieldValues.tags.isNotEmpty ? '' : "Enter tag...",
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            errorText: inputFieldValues.error,
            prefixIconConstraints: BoxConstraints(maxWidth: Get.width * 0.8),
            prefixIcon: inputFieldValues.tags.isNotEmpty
                ? SingleChildScrollView(
                    controller: inputFieldValues.tagScrollController,
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 8,
                      ),
                      child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 2.0,
                          children: inputFieldValues.tags.map((String tag) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color: Color.fromARGB(66, 214, 207, 207),
                              ),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    child: Text(
                                      '#$tag',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  InkWell(
                                    child: const Icon(
                                      Icons.cancel,
                                      size: 14.0,
                                      color: Color.fromARGB(255, 233, 233, 233),
                                    ),
                                    onTap: () {
                                      inputFieldValues.onTagRemoved(tag);
                                    },
                                  )
                                ],
                              ),
                            );
                          }).toList()),
                    ),
                  )
                : null,
          ),
          onChanged: inputFieldValues.onTagChanged,
          onSubmitted: inputFieldValues.onTagSubmitted,
        );
      },
    );
  }
}
