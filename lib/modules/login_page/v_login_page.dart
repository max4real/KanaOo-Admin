import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kana_oo_admin/modules/login_page/c_login_page.dart';
import 'package:kana_oo_admin/modules/main_page/v_main_page.dart';
import 'package:kana_oo_admin/services/c_data_controller.dart';
import 'package:kana_oo_admin/services/c_theme_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginPageController controller = Get.put(LoginPageController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/KanaOoLogo.png",
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: Get.height - 20,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "LOGIN",
                                style:
                                    TextStyle(fontSize: 20, color: background),
                              ),
                              TextField(
                                controller: controller.phoneNumber,
                                keyboardType: TextInputType.phone,
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
                                    prefixIcon: const Icon(Iconsax.call,
                                        size: 20, color: Colors.white),
                                    hintText: "Phone Number"),
                              ),
                              ValueListenableBuilder(
                                valueListenable: controller.xObscured,
                                builder: (context, value, child) {
                                  return TextField(
                                    controller: controller.password,
                                    obscureText: value,
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: onBackground,
                                      prefixIcon: const Icon(
                                        Iconsax.password_check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      hintText: "Password",
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.xObscured.value =
                                              !controller.xObscured.value;
                                        },
                                        icon: value
                                            ? const Icon(Iconsax.eye_slash)
                                            : Icon(
                                                Iconsax.eye,
                                                color: secondary,
                                              ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Get.offAll(const MainPage());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: background,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                ),
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
