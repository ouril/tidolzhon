import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tidolzhon/src/main_state.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    return Scaffold(
      appBar: AppBar(),
      // body: ,
    );
  }
}
