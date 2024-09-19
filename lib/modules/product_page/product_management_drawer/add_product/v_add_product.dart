import 'package:flutter/material.dart';
import 'package:kana_oo_admin/modules/product_page/product_management_drawer/add_product/c_add_product.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:get/get.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  late double _distanceToField;
  // late StringTagController _stringTagController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void initState() {
    super.initState();
    // _stringTagController = StringTagController();
    AddProductController controller = Get.put(AddProductController());
    controller.stringTagController = StringTagController();
  }

  @override
  void dispose() {
    super.dispose();
    // _stringTagController.dispose();
    AddProductController controller = Get.find();
    controller.stringTagController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AddProductController controller = Get.find();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      makeTagField(),
                      SizedBox(
                        width: 40,
                        child: IconButton(
                            onPressed: () {
                              controller.stringTagController.clearTags();
                            }, icon: const Icon(Icons.clear)),
                      )
                    ],
                  ),
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
    List<String> initialTags1 = <String>[...controller.initialTags];
    return SizedBox(
      height: 70,
      width: Get.width * 0.7,
      child: Autocomplete<String>(
        optionsViewBuilder: (context, onSelected, options) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: primary,
                elevation: 4.0,
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 200, maxWidth: 250),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final String option = options.elementAt(index);
                      return TextButton(
                        onPressed: () {
                          onSelected(option);
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '#$option',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return initialTags1.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (String selectedTag) {
          controller.stringTagController.onTagSubmitted(selectedTag);
        },
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return TextFieldTags<String>(
            textEditingController: textEditingController,
            focusNode: focusNode,
            textfieldTagsController: controller.stringTagController,
            initialTags: const [
              'yaml',
              'gradle',
            ],
            textSeparators: const [' ', ','],
            letterCase: LetterCase.normal,
            validator: (String tag) {
              if (tag == 'php') {
                return 'No, please just no';
              } else if (controller.stringTagController.getTags!
                  .contains(tag)) {
                return 'You\'ve already entered that';
              }
              return null;
            },
            inputFieldBuilder: (context, inputFieldValues) {
              return TextField(
                onTapOutside: (event) {
                  dismissKeyboard();
                },
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
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
                  hintText:
                      inputFieldValues.tags.isNotEmpty ? '' : "Enter tag...",
                  errorText: inputFieldValues.error,
                  prefixIconConstraints:
                      BoxConstraints(maxWidth: _distanceToField * 0.74),
                  prefixIcon: inputFieldValues.tags.isNotEmpty
                      ? SingleChildScrollView(
                          controller: inputFieldValues.tagScrollController,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: inputFieldValues.tags.map((String tag) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color: Color.fromARGB(66, 214, 207, 207),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Text(
                                      '#$tag',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      //print("$tag selected");
                                    },
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
                        )
                      : null,
                ),
                onChanged: inputFieldValues.onTagChanged,
                onSubmitted: inputFieldValues.onTagSubmitted,
              );
            },
          );
        },
      ),
    );
  }
}
