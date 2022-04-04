import 'package:hive/hive.dart';

@HiveType()
class Inventory {
  @HiveField(0)
  final String? item_name;

  @HiveField(1)
  final String? item_price;

  @HiveField(2)
  final String? item_status;

  @HiveField(3)
  final String? item_description;

  @HiveField(4)
  final String? item_location;

  Inventory(
      {this.item_name,
      this.item_price,
      this.item_status,
      this.item_description,
      this.item_location});
}
