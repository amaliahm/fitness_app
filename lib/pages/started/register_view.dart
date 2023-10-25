import 'package:fitness_app/core.dart';
import 'package:fitness_app/pages/started/widgets/body_header.dart';
import 'package:fitness_app/shared/widgets/text_feiled_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            bodyHeader(),
            bodyForm(),
            actionButton(),
          ],
        ),
      ),
    );
  }

  Widget bodyHeader() {
    return const BodyHeader(
      backgroundImagePath: "assets/images/black/4.jpg",
      title: 'Sign Up',
      subTitle: "Train and live the new experience of \nexercising at home",
    );
  }

  Widget bodyForm() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldWidget(
            label: "Name",
            hint: "Enter your name",
          ),
          SizedBox(height: 20),
          TextFieldWidget(
            label: "Email",
            hint: "amalia.hemadi@gmail.com",
          ),
          SizedBox(height: 20),
          TextFieldWidget(
            label: "Phone",
            hint: "Enter your phone",
          ),
          SizedBox(height: 20),
          TextFieldWidget(
            label: "Password",
            hint: "********",
            obsecure: true,
          ),
          SizedBox(height: 20),
          TextFieldWidget(
            label: "Confirm Password",
            hint: "********",
          ),
          SizedBox(height: 20),
          Text(
            "By signing up, i agree to the aqua workout Agremeent adn Privacy Policy",
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget actionButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Center(
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
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: Container(
                height: 50,
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kThirdColor,
                    border: Border.all(width: 1, color: kFirstColor)),
                child: const Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
