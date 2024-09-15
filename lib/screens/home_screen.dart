import 'package:flutter/material.dart';
import 'package:navigator_page_route/screens/profile_screen.dart';
import 'package:navigator_page_route/screens/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //Navigator --> Push
                  //Stac data Stacture
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProfileScreen();
                      },
                    ),
                  );
                },
                child: Text('Go to Profile')),
            ElevatedButton(
                onPressed: () {
                  //Navigator --> Push
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SettingScreen();
                      },
                    ),
                  );
                },
                child: Text('Go to Setting')),
          ],
        ),
      ),
    );
  }
}
