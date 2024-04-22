import 'package:flutter/material.dart';
import 'package:homey/Views/home/home.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(


      bottomNavigationBar: Obx( //observer
        ()=> NavigationBar(
          height:80,
          elevation:0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,


        destinations:  const[

            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.search_normal), label: "Explore"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Favorites"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),


          ],
        ),
      ),
      body: Obx (() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;//what is observed
  final screens = [const HomeScreen(), Container(color: Colors.blue),Container(color: Colors.pink),Container(color: Colors.yellow)];

}