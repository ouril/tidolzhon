import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tidolzhon/utils/amount.dart';

class Event {
  final Color color;
  final IconData icon;
  final DateTime dt;
  final Amount amount;
  final String title;

  Event({
    required this.title,
    required this.color,
    required this.icon,
    required this.dt,
    required this.amount,
  });
}

class MainController extends GetxController {
  RxList rvents = [].obs;
}
