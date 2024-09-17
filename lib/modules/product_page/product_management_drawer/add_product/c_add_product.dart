import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textfield_tags/textfield_tags.dart';

class AddProductController extends GetxController {
  TextEditingController txtCategory = TextEditingController();
  TextEditingController txtSubCategory = TextEditingController();

  late StringTagController stringTagController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    stringTagController = StringTagController();
  }

  @override
  void dispose() {
    super.dispose();
    stringTagController.dispose();
  }

  List<String> initialTags = <String>[
    'yaml',
    'gradle',
    'c',
  ];

  var categoryItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var subcategoryItems = [
    'Sub Item 1',
    'Sub Item 2',
    'Sub Item 3',
    'Sub Item 4',
    'Sub Item 5',
  ];
}
