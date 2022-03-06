import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutcontrollerController

  final count = 0.obs;
  // DateTime day= DateTime;
  @override
  void onInit() {
    super.onInit();
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
