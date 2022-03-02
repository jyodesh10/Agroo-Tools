import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/theme.dart';
import 'package:agrotools/widgets/app_button.dart';
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Item Detail",
          style: headingStyle,
        ),
      ),
      body: buildItemDetails(),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          child: MyButton(label: 'Rent', onTap: () {})),
    );
  }

  buildItemDetails() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              // color: Colors.black,
              child: Image.asset(
                'assets/pic axe.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pick Axe",
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
                text: 'Rs.200/day',
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
