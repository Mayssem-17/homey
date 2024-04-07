import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
        color: Colors.white,
        child: ListView(

        padding: EdgeInsets.symmetric(vertical:30,horizontal: 20),
        children: [
          buildFeature(
            "Map",
            "You can Locate Properties on the Map.",
            "assets/images/3d-view-map.jpg",
          ),
          buildFeature(
            "Search",
            "you can Search for Properties using textual description.",
            "assets/images/magnifying-glass.jpg",
          ),
          buildFeature(
            "Filter",
            "you can Search for Properties based on your Preference",
            "assets/images/filter.jpg",
          ),
          buildFeature(
            "Favorites",
            "you can save a Properties by adding it to your Favorites",
            "assets/images/fav.PNG",
          ),
        ],
      ),
    ),);
  }

  Widget buildFeature(String imageName, String description, String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Textual Description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  imageName,
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
