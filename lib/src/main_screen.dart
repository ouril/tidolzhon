import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tidolzhon/src/main_state.dart';
import 'package:tidolzhon/src/screens/add_screen/add_event_screen.dart';
import 'package:tidolzhon/utils/amount.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

    return Scaffold(
        drawer: Drawer(child: Column()),
        appBar: AppBar(
          title: const Text("Events"),
          actions: [
            // Navigate to the Search Screen
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_open))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final result = Get.to(const AddEventScreen());
            if (result != null) controller.rvents.add(result);
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Obx(
          () {
            return Column(
              children: controller.rvents
                  .map((event) => Card(
                        color: event.color,
                        child: Text(event.title),
                      ))
                  .toList(),
            );
          },
        ));
  }
}
