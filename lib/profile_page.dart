// pages/profile_page.dart

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('User Profile Info'),
            ElevatedButton(
              onPressed: () {
                // Edit profile action
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
