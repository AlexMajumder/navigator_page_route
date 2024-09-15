import 'package:flutter/material.dart';
import 'package:navigator_page_route/screens/home_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Setting',
          style: (TextStyle(
            color: Colors.black,
          )),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Back the Previous Screen
                },
                child: Text('Back to Home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const HomeScreen()),
                      (valu) => true,); // remove all or Kill all previous stack
                },
                child: Text('Push And Remove Untill')),
          ],
        ),
      ),
    );
  }
}
