import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../screens/details/itemdetails.dart';
import '../theme.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
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
                          "Return",
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
}
