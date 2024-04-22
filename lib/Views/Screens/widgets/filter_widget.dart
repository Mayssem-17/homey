import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: const Offset(4, 4))
                          ]),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                            prefixIcon: Icon(Iconsax.search_normal)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: const Offset(4, 4))
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Iconsax.filter_add,
                          size: 26,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}