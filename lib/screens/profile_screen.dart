import 'package:flutter/material.dart';
import 'package:navigator_page_route/screens/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.userName});

  final String userName;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.userName,
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()),
                  ); // the Professional and the Short way
                },
                child: Text('Go to Setting')),
          ],
        ),
      ),
    );
  }
}
