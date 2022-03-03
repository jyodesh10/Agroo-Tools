import 'package:agrotools/app/controllers/checkout_controller.dart';
import 'package:agrotools/constant/colors.dart';
import 'package:agrotools/theme.dart';
import 'package:agrotools/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);

  final String image;
  final String name;
  final String price;

  CheckoutController controller = Get.put(CheckoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          name,
          style: headingStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImage(),
            const SizedBox(height: 20),
            Text(
              'Click the date range for rent',
              style: subtitleStyle,
            ),
            const SizedBox(height: 10),
            buildCalender(),
            const SizedBox(height: 10),
            buildStartEndCard(),
            const SizedBox(height: 10),
            buildItemInfoCard(),
            const SizedBox(height: 20),
            MyButton(
                label: 'Rent Now',
                onTap: () {
                  Get.snackbar('processing', '');
                }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Center(
      child: Container(
          height: 250,
          width: 250,
          color: Colors.grey.shade200,
          child: Image.asset(image)),
    );
  }

  buildCalender() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.mainGrey, borderRadius: BorderRadius.circular(20)),
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.now(),
        lastDay: DateTime(2024),
      ),
    );
  }

  buildStartEndCard() {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.mainGrey, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Staring date\n3rd March 2022',
            style: subtitleStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          Container(
            height: 60,
            width: 2,
            color: Colors.grey,
          ),
          Text(
            'Ending date\n3rd March 2022',
            style: subtitleStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

  buildItemInfoCard() {
    return Container(
      child: Column(
        children: [
          Text(
            'Delivery Fee: Rs 200',
            style: headingStyle.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Units Required',
                style: headingStyle.copyWith(color: Colors.black),
              ),
              Text(
                '1',
                style: headingStyle.copyWith(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Price',
                style: headingStyle.copyWith(color: Colors.black),
              ),
              Text(
                'Rs.${price}/day',
                style: headingStyle.copyWith(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: headingStyle.copyWith(color: Colors.black),
              ),
              Text(
                'Rs 1000',
                style: headingStyle.copyWith(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
