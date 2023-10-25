import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyHeader extends StatelessWidget {
  final String backgroundImagePath, title, subTitle;
  const BodyHeader(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.backgroundImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [backgroundImage(), titleSubtitle()],
    );
  }

  Container titleSubtitle() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              kThirdColor,
              Colors.transparent,
            ]),
      ),
      height: Get.height * 0.55,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                  text: 'HARD\t',
                  style: TextStyle(
                    fontFamily: "Bebas",
                    fontSize: 30,
                    letterSpacing: 5,
                  ),
                  children: [
                    TextSpan(
                      text: 'ELEMENT',
                      style: TextStyle(
                        color: kFirstColor,
                      ),
                    )
                  ]),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subTitle,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container backgroundImage() {
    return Container(
      height: Get.height * 0.55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
