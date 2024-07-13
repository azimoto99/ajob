// pages/home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> jobPostings = [
    {
      'title': 'Delivery Driver',
      'company': 'Local Eats',
      'location': 'Austin, TX'
    },
    {
      'title': 'Warehouse Worker',
      'company': 'Tech Corp',
      'location': 'Austin, TX'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Listings'),
      ),
      body: ListView.builder(
        itemCount: jobPostings.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jobPostings[index]['title']!),
            subtitle: Text(
                '${jobPostings[index]['company']} - ${jobPostings[index]['location']}'),
            onTap: () {
              Navigator.pushNamed(context, '/jobDetails');
            },
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
