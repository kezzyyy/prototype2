import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(const Homepage());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Add functionality for hamburger menu button (e.g., open a drawer)
              if (kDebugMode) {
                print('Hamburger menu clicked');
              }
            },
          ),
          actions: [
            // Search bar
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Add functionality for search button
                if (kDebugMode) {
                  print('Search clicked');
                }
              },
            ),
            // Post button
            IconButton(
              icon: const Icon(Icons.post_add),
              onPressed: () {
                // Add functionality for post button
                if (kDebugMode) {
                  print('Post clicked');
                }
              },
            ),
            TextButton(
              onPressed: () {
                // Navigate to the SecondPage when "Near Me" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              child: const Text(
                'Near Me',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add functionality for "Top" button
                if (kDebugMode) {
                  print('Top clicked');
                }
              },
              child: const Text(
                'Top',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
