
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String youtubeUrl = "https://www.youtube.com/@YOUR_CHANNEL_NAME";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscribe App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              if (await canLaunch(youtubeUrl)) {
                await launch(youtubeUrl);
              }
            },
            child: Text('Subscribe to YouTube', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
