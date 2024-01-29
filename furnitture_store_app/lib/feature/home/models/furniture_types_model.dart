import 'package:flutter/material.dart';

class FurnitType {
  final String name;
  final IconData iconData;
  FurnitType({required this.name, required this.iconData});
}

List<FurnitType> furnitTypes = [
  FurnitType(name: 'Popular', iconData: Icons.star_rate_rounded),
  FurnitType(name: 'Chair', iconData: Icons.chair_alt_outlined),
  FurnitType(name: 'Table', iconData: Icons.table_restaurant_outlined),
  FurnitType(name: 'ArmChair', iconData: Icons.chair_outlined),
  FurnitType(name: 'Bed', iconData: Icons.bed_outlined),
  FurnitType(name: 'lamp', iconData: Icons.light_outlined),
  FurnitType(name: 'closet', iconData: Icons.door_sliding_outlined),
  FurnitType(name: 'drawer', iconData: Icons.list_alt_outlined),
];
