import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/screens/login/login.dart';
import 'package:agrotools/theme.dart';
import 'package:agrotools/widgets/app_button.dart';
import 'package:agrotools/widgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.to(LoginPage());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.mainGreen,
            )),
        title: Text(
          'Registration',
          style: headingStyle.copyWith(color: AppColors.mainGreen),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 350,
              width: double.infinity,
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.shade300,
                        offset: Offset(0, 4))
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login Details',
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                      icon: Icons.email,
                      label: 'Enter your email or phone number '),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(icon: Icons.password, label: 'Password '),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                      icon: Icons.password, label: 'Consfirm password '),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.shade300,
                        offset: Offset(0, 4))
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Profile Details',
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(icon: Icons.person, label: 'Username'),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(icon: Icons.phone, label: 'Phone Number '),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(icon: Icons.location_city, label: 'City '),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                      icon: Icons.location_city, label: 'District'),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(icon: Icons.location_city, label: 'State '),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                      icon: Icons.location_city, label: 'Country '),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(label: 'Submit', onTap: () {}),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member?',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    child: const Text(
                      'Sign in',
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
    );
  }
}
