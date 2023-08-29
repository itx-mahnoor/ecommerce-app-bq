import 'package:ecommerce_app/screens/bag.dart';
import 'package:ecommerce_app/screens/fav.dart';
import 'package:ecommerce_app/screens/women_tops.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff130d0d), // Dark grey background
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Categories"),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button click action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEF3651),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
                child: Text("Choose Category"),
              ),
            ),
            SizedBox(height: 10),
            Text("Choose Category"),
            ListTile(
              title: Text("Tops"),
              onTap: () {
                // Handle tile tap action
              },
              tileColor: Color(0xff222121),
            ),
            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text("Shirts and Blouses"),
              onTap: () {
                // Handle tile tap action
              },
              tileColor:
                  Color(0xff222121), // Set the tile background color to black
            ),
            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text(
                "Women's Tops",
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WomenTopsScreen(),
                  ),
                );
              },
              tileColor: Color(0xff222121), // Set the tile background color
            ),

            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text("Pants"),
              onTap: () {
                // Handle tile tap action
              },
              tileColor:
                  Color(0xff222121), // Set the tile background color to black
            ),
            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text(
                "Dresses",
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                ),
              ),
              onTap: () {
                // Handle tile tap action
              },
              tileColor: Color(0xff222121), // Set the tile background color
            ),
            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text(
                "Skirts",
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                ),
              ),
              onTap: () {
                // Handle tile tap action
              },
              tileColor: Color(0xff222121), // Set the tile background color
            ),
            SizedBox(height: 5), // Add some spacing between tiles
            ListTile(
              title: Text(
                "Men's Wear",
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                ),
              ),
              onTap: () {
                // Handle tile tap action
              },
              tileColor: Color(0xff222121), // Set the tile background color
            ),
            SizedBox(height: 5), // Add some spacing between tiles
          ],
        ),
        bottomNavigationBar: Container(
          color: Color(0xff222121),
          child: TabBar(
            indicatorColor: Color(0xffde5252),
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.shop)),
              Tab(icon: Icon(Icons.shopping_bag)),
              Tab(icon: Icon(Icons.favorite)),
              Tab(icon: Icon(Icons.person)),
            ],
            onTap: (index) {
              // Handle tab bar tap here
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
                // Home tab
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(),
                  ),
                );
                // Shop tab
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BagScreen(),
                  ),
                );
                // Bag tab
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavScreen(),
                  ),
                );
                // Favorite tab
              } else if (index == 4) {
                // Profile tab
              }
            },
          ),
        ),
      ),
    );
  }
}
