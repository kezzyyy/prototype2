import 'package:flutter/material.dart';
import 'package:testsub/user/create_blog.dart';
import 'package:testsub/user/main.dart';
import 'package:testsub/user/profile.dart';
import 'manage_ad.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePageAD()

    );
  }
}

class HomePageAD extends StatefulWidget {
  const HomePageAD({super.key});

  @override
  State<HomePageAD> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageAD> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text('Near Me')),
    const Center(child: Text('Latest')),
    const Center(child: Text('Top')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:
          Colors.black54,
          elevation: 0.0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      "Civic",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "Pulse",
                      style: TextStyle(fontSize: 22, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildNavItem("Near Me", 0),
                      const SizedBox(width: 120.0), // Space between items
                      _buildNavItem("Latest", 1),
                      const SizedBox(width: 120.0), // Space between items
                      _buildNavItem("Top", 2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("user@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Text("S"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Manage'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Manage()),
                );
              },
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const CreateBlog()));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildNavItem(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          color: _currentIndex == index ? Colors.blue : Colors.white,
          fontWeight: _currentIndex == index ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
