import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/screens/details/itemdetails.dart';
import 'package:agrotools/screens/login/login.dart';
import 'package:agrotools/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Agro Tools",
          style: headingStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Welcome to Agro Tools",
                style: headingStyle.copyWith(color: AppColors.textGreen),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "Various agricultural tools available for renting",
                style: subtitleStyle.copyWith(color: AppColors.textGreen),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.mainGreen, width: 2)),
              child: Row(
                children: const [
                  SizedBox(width: 10),
                  Icon(Icons.search_rounded),
                  SizedBox(width: 10),
                  Text("Search Available tools")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Items',
                    style: headingStyle.copyWith(color: AppColors.textGreen),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    children: [
                      buildItemCard(),
                      buildItemCard(),
                      buildItemCard(),
                      buildItemCard(),
                      buildItemCard(),
                      buildItemCard(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildItemCard() {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          color: AppColors.mainGrey, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pic axe.jpg',
                  fit: BoxFit.fill,
                ),
              )),
          Expanded(
              flex: 1,
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pic Axe",
                      style: subtitleStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textGreen),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Price: Rs 200/day",
                      style: subtitleStyle.copyWith(color: AppColors.textGreen),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () => Get.to(ItemDetailsPage()),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Rent",
                          style: subtitleStyle.copyWith(
                              fontSize: 15, color: Colors.white),
                        )),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  buildDrawer() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.mainGreen),
            child: Center(child: Image.asset('assets/logo.png')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              Get.off(LoginPage());
            },
          ),
        ],
      ),
    );
  }
}