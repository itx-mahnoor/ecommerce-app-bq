import 'package:flutter/material.dart';
import 'bag.dart';
import 'fav.dart';

class ProductCardScreen extends StatefulWidget {
  @override
  _ProductCardScreenState createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  // Variables to track selected size and color
  String selectedSize = '';
  String selectedColor = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff222121),
        title: Text("Short Dresses"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Handle share action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Color(0xff222121),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text("SIZE"),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // Handle color selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text("COLOR"),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // Handle favorite action
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FavScreen(), // Replace with your actual Fav screen
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.favorite_border),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Product information details
          // Add product details here
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add to cart action
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BagScreen(),
            ),
          );
        },
        backgroundColor: Color(0xFFEF3651),
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class SizeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff222121),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Select Size",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Handle size selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("XS"),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // Handle size selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("S"),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // Handle size selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("M"),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Handle size selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("L"),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // Handle size selection
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("XL"),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Handle size info action
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              padding: EdgeInsets.all(10),
              child: Text("Size Info"),
            ),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              // Handle save action
              Navigator.pop(context); // Close the bottom sheet
            },
            backgroundColor: Color(0xFFEF3651),
            child: Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
