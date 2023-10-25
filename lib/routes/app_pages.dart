// ignore_for_file: constant_identifier_names

import 'package:fitness_app/pages/started/forget_password.dart';
import 'package:fitness_app/pages/started/register_view.dart';
import 'package:get/get.dart';
import '../core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: Routes.FORGET_PASSWORD,
      page: () => const ForgetPasswordPage(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
    ),
  ];
}
