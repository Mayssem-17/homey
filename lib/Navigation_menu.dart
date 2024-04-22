import 'package:flutter/material.dart';
import 'package:homey/Views/Screens/explore.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import 'Views/Screens/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) =>
        controller.selectedIndex.value = index,

        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Iconsax.search_normal), label: "Explore"),
          NavigationDestination(icon: Icon(Iconsax.heart), label: "Favorites"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        ],
      )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const HomeScreen(), const ExploreScreen(), Container(color: Colors.pink), Container(color: Colors.yellow)];
}
