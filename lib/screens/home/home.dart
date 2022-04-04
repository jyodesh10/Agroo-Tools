import 'package:agrotools/app/controllers/checkout_controller.dart';
import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/screens/additems/additem.dart';
import 'package:agrotools/screens/details/itemdetails.dart';
import 'package:agrotools/screens/login/login.dart';
import 'package:agrotools/screens/profile/profilepage.dart';
import 'package:agrotools/screens/returnitem/returnitem.dart';
import 'package:agrotools/screens/search/search.dart';
import 'package:agrotools/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  CheckoutController controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Agro Tools",
          style: headingStyle.copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
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
            GestureDetector(
              onTap: () => Get.to(Search()),
              child: Container(
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
                      buildItemCard('assets/pic axe.jpg', 'pic axe', '200'),
                      buildItemCard('assets/Machete.jpg', 'Macheta', '100'),
                      buildItemCard(
                          'assets/Motocultor.jpg', 'Motocuktor', '500'),
                      buildItemCard('assets/sickle.jpg', 'Sickle', '100'),
                      buildItemCard(
                          'assets/wheat wheeler.jpeg', 'Wheat Wheeler', '1000'),
                      // // buildItemCard(),
                      // buildItemCard(
                      //     controller.box.get('itemimage'),
                      //     controller.box.get('itemname'),
                      //     controller.box.get('itemprice'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddItem());
        },
        backgroundColor: AppColors.mainGreen,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
        tooltip: 'Add Item',
      ),
    );
  }

  buildItemCard(image, name, price) {
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
                child: SizedBox(
                  width: 150,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: subtitleStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textGreen),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Price: Rs ${price}/day",
                      style: subtitleStyle.copyWith(color: AppColors.textGreen),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () => Get.to(ItemDetailsPage(
                          image: image, name: name, price: price)),
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
            leading: Icon(Icons.add),
            title: const Text('Add Tools'),
            onTap: () {
              Get.to(AddItem());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Retun Tools'),
            onTap: () {
              Get.to(Returntem());
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Get.to(ProfilePage());
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
