import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../theme.dart';
import '../../widgets/app_button.dart';
import '../../widgets/clipper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                        height: 200,
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
                    const InputField(
                      // controller: controller.email,
                      icon: Icons.email,
                      label: "Email",
                      // validator: (email) => validateEmail(string: email),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const InputField(
                      icon: Icons.password,
                      // controller: controller.password,
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
                          // if (_formKey.currentState!.validate())
                          {
                            // controller.loginWithEmail(
                            //     email: controller.email.text,
                            //     password: controller.password.text);
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
                              // Get.to(() => RegisterPage());
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

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      this.controller,
      this.validator,
      required this.icon,
      required this.label,
      this.obscureText = false})
      : super(key: key);
  final IconData icon;
  final TextEditingController? controller;
  // ignore: prefer_typing_uninitialized_variables
  final validator;
  final String label;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 352,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
            // prefixIcon: Icon(icon, size: 20),
            labelText: label,
            labelStyle: subtitleStyle,
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1))),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.mainGreen),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: AppColors.mainGreen),
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }
}
