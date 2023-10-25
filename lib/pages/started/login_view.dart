import 'package:fitness_app/core.dart';
import 'package:fitness_app/pages/started/widgets/body_header.dart';
import 'package:fitness_app/shared/widgets/text_feiled_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Stack(
              children: [
                BodyHeader(backgroundImagePath: "assets/images/black/12.jpg", subTitle: "Train and live the new experience of \nexercising at home", title: "Sign In",),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLogin(),
                  SizedBox(height: 15),
                  forgetButton(),
                  SizedBox(height: 15),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kFirstColor,
                            ),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.REGISTER),
                          child: Container(
                            height: 50,
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kThirdColor,
                                border:
                                    Border.all(width: 1, color: kFirstColor)),
                            child: const Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Align forgetButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Get.toNamed(Routes.FORGET_PASSWORD),
        child: const Text(
          "Forgot your password?",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  Column formLogin() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldWidget(label: "Email", hint: "amalia.hemadi@gmail.com",),
          SizedBox(height: 20),
          TextFieldWidget(label: "Password", hint: "********", obsecure: true,),
      ],
    );
  }
}
