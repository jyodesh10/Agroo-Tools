import 'package:agrotools/screens/home/home.dart';
import 'package:agrotools/screens/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../theme.dart';
import '../../widgets/app_button.dart';
import '../../widgets/clipper.dart';
import '../../widgets/inputfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    email.text = "admin";
    password.text = "admin";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///curve design and icon
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CurveClipper(),
                    child: Container(
                      color: AppColors.mainGreen,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Image.asset(
                        "assets/logo.png",
                        height: 150,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Form(
                // key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainGreen),
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      controller: email,
                      icon: Icons.email,
                      label: "Email",
                      // validator: (email) => validateEmail(string: email),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    InputField(
                      icon: Icons.password,
                      controller: password,
                      label: "Password",
                      obscureText: true,
                      // validator: (pass) => validatePassword(string: pass),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              // Get.to(() => ForgetPassword());
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.5)),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 352,
                      child: MyButton(
                        onTap: () {
                          if (email.text == "admin" &&
                              password.text == "admin") {
                            Get.to(HomePage());
                          } else {
                            Get.snackbar("Error", 'Login');
                          }
                          if (email.text.isEmpty) {
                            Get.snackbar("Error", 'Empty Field');
                          }
                        },
                        label: 'Login',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member yet?',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.5)),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(Register());
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.mainGreen,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
