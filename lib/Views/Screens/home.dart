import 'package:flutter/material.dart';
import 'package:homey/Views/Screens/widgets/filter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FilterWidget(),
    );
  }
}
