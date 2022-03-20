// ignore_for_file: file_names

import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => LoginView()));
    Get.to(() => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGreen,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 200,
        ),
      ),
    );
  }
}
