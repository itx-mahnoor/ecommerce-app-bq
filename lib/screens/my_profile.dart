import 'package:ecommerce_app/screens/profile_orders.dart';
import 'package:flutter/material.dart';

import 'bag.dart';
import 'category.dart';
import 'fav.dart';
import 'main_page.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff222121),
      appBar: AppBar(
        backgroundColor: Color(0xff222121), // Background color
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'MY PROFILE',
              style: TextStyle(
                color: Colors.white, // White color
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset('assets/dp.png', width: 64, height: 64),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Matilda Brown',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'matildabrown@mail.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            buildProfileTile('My Orders', 'Already have 5 Orders', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileOrdersScreen()),
              );
            }),
            buildProfileTile('Shipping Address', 'Addresses', () {
              // Handle onTap for Shipping Address tile
            }),
            buildProfileTile('Payment Methods', 'via. ..34', () {
              // Handle onTap for Payment Methods tile
            }),
            buildProfileTile('Promocodes', 'You have special promocodes', () {
              // Handle onTap for Promocodes tile
            }),
            buildProfileTile('My Reviews', 'Review for 4 hours', () {
              // Handle onTap for My Reviews tile
            }),
            buildProfileTile('Settings', 'Notifications, passwords, etc', () {
              // Handle onTap for Settings tile
            }),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
              // Profile tab
            }
          },
        ),
      ),
    );
  }

  Widget buildProfileTile(
      String title, String subTitle, Null Function() param2) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
      onTap: () {},
    );
    Divider(
      color: Colors.grey, // Grey line separator
      height: 1,
    );
  }
}
