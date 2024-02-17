import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      drawer: MyDrawer(),
    ),
  ));
}

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Profile',
      'icon': Icons.person,
    },
    {
      'title': 'Settings',
      'icon': Icons.settings,
    },
    {
      'title': 'About Us',
      'icon': Icons.info,
    },
    {
      'title': 'Logout',
      'icon': Icons.logout,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(drawerItems[index]['icon']),
            title: Text(drawerItems[index]['title']),
            onTap: () {
              // Handle tap event for each item
              Navigator.pop(context);
              // Add your navigation logic here based on the selected item
            },
          );
        },
      ),
    );
  }
}
