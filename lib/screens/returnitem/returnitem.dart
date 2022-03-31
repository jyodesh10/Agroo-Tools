import 'package:agrotools/theme.dart';
import 'package:agrotools/widgets/itemcard.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class Returntem extends StatelessWidget {
  const Returntem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Return Tools",
          style: headingStyle.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hired Tools',
                    style: headingStyle,
                  ),
                  Spacer(),
                  Text(
                    'See Returned list',
                    style: subHeadingStyle.copyWith(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                runSpacing: 20,
                spacing: 20,
                children: const [
                  ItemCard(
                      image: 'assets/pic axe.jpg',
                      name: 'pic axe',
                      price: '200'),
                  ItemCard(
                      image: 'assets/pic axe.jpg',
                      name: 'pic axe',
                      price: '200'),

                  ItemCard(
                      image: 'assets/pic axe.jpg',
                      name: 'pic axe',
                      price: '200'),

                  ItemCard(
                      image: 'assets/pic axe.jpg',
                      name: 'pic axe',
                      price: '200'),

                  ItemCard(
                      image: 'assets/pic axe.jpg',
                      name: 'pic axe',
                      price: '200'),

                  // buildItemCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
