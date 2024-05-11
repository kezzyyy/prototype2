import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text(
                    'Loremipsum',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Spacer(),
                  Icon(Icons.help_outline),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('@Marites2123'),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Age: 19'),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(Icons.location_on),
                  Text('#99 Name St. Barangay'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
