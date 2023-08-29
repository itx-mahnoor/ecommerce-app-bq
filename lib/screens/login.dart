import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // For making HTTP requests
import 'visual_search.dart'; // Import the VisualSearchScreen

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final url = Uri.parse('https://ecommerce.salmanbediya.com/users/login');
    final response = await http.put(
      url,
      body: {
        'email': _emailController.text,
        'password': _passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      // Successful login, navigate to VisualSearchScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VisualSearch()),
      );
    } else {
      // Handle error, show error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(''),
        backgroundColor:
            Color(0xff0f0e0e), // Set the app bar background color to black
      ),
      backgroundColor:
          Color(0xff141313), // Set the scaffold background color to black
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'LOG IN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xFFFAF9F6)),
                filled: true,
                fillColor: Color(0xFF2A2C36),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xFFFAF9F6)),
                filled: true,
                fillColor: Color(0xFF2A2C36),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the forgot password screen
                Navigator.pushNamed(context, '/forgot_password');
              },
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Color(0xFFEF3651),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Log in with',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/fb.png', // Facebook image asset
                  // color: Color(0x80ffffff),
                  width: 35,
                  height: 35,
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/google.png', // Google image asset
                  //color: Color(0x00ffffff),
                  width: 35,
                  height: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
