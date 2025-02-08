import 'package:flutter/material.dart';
import 'package:testsub/user/main.dart'; // Replace with your actual import

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Civic",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "Pulse",
                style: TextStyle(fontSize: 22, color: Colors.purpleAccent),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Box (fixed size, aligned to the left side)
              Container(
                width: 300.0, // Static width for the profile box
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Picture and Name
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'John Doe', // Replace with the actual user's name
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '@JohnDoe2123', // Replace with actual user handle
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),

                    // User Info Section
                    const Row(
                      children: [
                        Icon(Icons.cake, color: Colors.purpleAccent),
                        SizedBox(width: 10.0),
                        Text(
                          'Age: 25', // Replace with actual user's age
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.purpleAccent),
                        SizedBox(width: 10.0),
                        Text(
                          '#99 Name St. Barangay', // Replace with actual user address
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),

                    // Help Button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Help button action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[850],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        minimumSize: const Size(150, 40), // Button size
                      ),
                      icon: const Icon(Icons.help_outline, color: Colors.white),
                      label: const Text("Help us!"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("John Doe"), // Replace with actual user name
                accountEmail: Text("john.doe@example.com"), // Replace with actual email
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Text("J"), // Replace with actual initials
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              const Spacer(),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstPage()), // Replace with login page
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
