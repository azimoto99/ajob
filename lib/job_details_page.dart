// pages/job_details_page.dart

import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Job Title: Delivery Driver'),
            Text('Company: Local Eats'),
            Text('Location: Austin, TX'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/apply');
              },
              child: Text('Apply for Job'),
            ),
          ],
        ),
      ),
    );
  }
}
