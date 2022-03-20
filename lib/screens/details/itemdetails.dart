import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/screens/checkout/checkout.dart';
import 'package:agrotools/theme.dart';
import 'package:agrotools/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsPage extends StatelessWidget {
  ItemDetailsPage(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);
  final String image;
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Item Detail",
          style: headingStyle.copyWith(color: Colors.white),
        ),
      ),
      body: buildItemDetails(),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          child: MyButton(
              label: 'Rent',
              onTap: () {
                Get.to(
                    () => CheckoutPage(image: image, name: name, price: price));
              })),
    );
  }

  buildItemDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              // color: Colors.black,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: headingStyle.copyWith(
                    fontSize: 30, color: AppColors.textGreen),
              ),
              Column(
                children: [
                  Text("Rating"),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text('4.5')
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: TextSpan(text: 'Price: ', style: subtitleStyle, children: [
            TextSpan(
                text: 'Rs.${price}/day',
                style: subtitleStyle.copyWith(
                    color: Colors.blueAccent, fontSize: 15))
          ])),
          const SizedBox(height: 10),
          RichText(
              text: TextSpan(text: 'Status: ', style: subtitleStyle, children: [
            TextSpan(
                text: 'Available',
                style: subtitleStyle.copyWith(
                    color: AppColors.mainGreen, fontSize: 15))
          ])),
          const SizedBox(height: 10),
          RichText(
              text: TextSpan(text: 'Owner: ', style: subtitleStyle, children: [
            TextSpan(
                text: 'Rameshor yadav',
                style: subtitleStyle.copyWith(
                    color: Colors.blueAccent, fontSize: 15))
          ])),
          const SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: 'Description: ',
                  style: subtitleStyle,
                  children: [
                TextSpan(
                    text: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
                    style: subtitleStyle.copyWith(
                        color: Colors.blueAccent, fontSize: 15))
              ])),
        ],
      ),
    );
  }
}
