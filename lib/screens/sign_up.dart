import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // For making HTTP requests
import 'visual_search.dart'; // Import the VisualSearchScreen

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signUp() async {
    final url = Uri.parse('https://ecommerce.salmanbediya.com/users/register');
    final response = await http.post(
      url,
      body: {
        'name': _nameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      // Successful sign-up, navigate to VisualSearchScreen
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
        backgroundColor: Color(0xff0f0f0f),
      ),
      backgroundColor: Color(0xff0e0d0d),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Name',
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
                // Navigate to the login screen
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Already have an account?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call the sign-up API
                _signUp();
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
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Sign up with',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  color: Color(0xff633eec),
                  size: 30,
                ),
                SizedBox(width: 20),
                // Icon(
                // Icons.google,
                // color: Colors.white,
                // size: 30,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
