import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:table_calendar/table_calendar.dart';

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutcontrollerController

  final count = 0.obs;
  // DateTime day= DateTime;
  Uint8List? image;
  var itemname = TextEditingController();
  var itemprice = TextEditingController();
  var itemstatus = TextEditingController();
  var itemdescription = TextEditingController();
  var itemlocation = TextEditingController();
  late Box box;
  @override
  void onInit() {
    createBox();
    super.onInit();
  }

  void createBox() async {
    box = await Hive.openBox('database1');
  }

  calender() {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.now(),
      lastDay: DateTime(2024),
      // onDaySelected: day,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
