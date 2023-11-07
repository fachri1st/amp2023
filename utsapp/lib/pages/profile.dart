import 'package:flutter/material.dart';
import 'package:utsapp/pages/home.dart';
import 'package:utsapp/conf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY4MTMyMTI1MQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),
            ),
            SizedBox(height: 20),
            Text(
              'Maulana Fachri W',
              style: textTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
            SizedBox(height: 10),
            Text(
              'NPM. 20671057',
              style: textTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Aplikasi ini dibuat untuk memenuhi UTS Advanced Pemrogramman Mobile Fakultas Teknik Informatika UPGRIS 2023',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(fontSize: 12),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                title: 'Back to Dashboard',
                              )));
                },
                child: Text("Back to Dashboard")),
          ],
        ),
      ),
    );
  }
}
