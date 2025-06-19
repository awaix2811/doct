import 'package:flutter/material.dart';
import 'package:my_doctor/Auth_Screens/Signin_Screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profile",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(height: 10),
                // Name
                const Text(
                  "Zeeshan Ashraf",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                // Email
                const Text(
                  "admin@zeeshanashraf.dev",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Settings Section
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(
                    size: 35,
                      Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    // Navigate to Profile details
                  },
                ),
                ListTile(
                  leading: const Icon(
                      size: 35,
                      Icons.dark_mode),
                  title: const Text("Dark Mode"),
                  trailing: Switch(
                    value: false, // Change to true/false as needed
                    onChanged: (bool value) {
                      // Handle theme toggle
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(
                      size: 35,
                      Icons.info),
                  title: const Text("About"),
                  onTap: () {
                    // Navigate to About page
                  },
                ),
                ListTile(
                  leading: const Icon(
                      size: 35,
                      Icons.logout),
                  title: const Text("Logout"),
                  onTap: () {
                    // Handle logout logic
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
