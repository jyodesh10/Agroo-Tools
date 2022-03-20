import 'package:agrotools/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainGreen,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Profile',
          style: headingStyle.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 60,
              child: const Icon(
                Icons.person,
                size: 80,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
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
                Text(
                  'Personal Information ',
                  style: headingStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Adress',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Birgung, Kathmandu',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '977 9808080808',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '977 9808080808',
                          style: subtitleStyle,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
