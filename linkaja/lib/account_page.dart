import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the container
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chyntia Santi Nur Trisnawati',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins', // Using Poppins font
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '+6281334706692',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'images/fotoku.png'), // Replace with actual image URL
                  ),
                ],
              ),
            ),
          ),
          // Container for the list items
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the list container
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                buildListTile('Account Type', 'FULL SERVICE'),
                buildListTile('Account Settings', null),
                buildListTile('LinkAja Syariah', 'Not Active'),
                buildListTile('Payment Method', null),
                buildListTile('Email', 'chyntia.nurtris@gmail.com'),
                buildListTile('Security Question', 'Set'),
                buildListTile('PIN Settings', null),
                buildListTile('Language', 'English'),
                buildListTile('Terms of Service', null),
                buildListTile('Privacy Policy', null),
                buildListTile('Help Center', null),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String title, String? subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 8.0), // Adjust left-right padding
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins', // Using Poppins font
            ),
          ),
          if (subtitle != null) // Show subtitle if not null
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: 'Poppins', // Using Poppins font
                fontSize: 11, // Smaller font size
                color: const Color.fromARGB(255, 151, 146, 145),
              ),
            ),
        ],
      ),
      trailing: Icon(
        Icons.chevron_right,
        color:
            const Color.fromARGB(255, 205, 34, 51), // Change arrow color to red
      ),
      onTap: () {},
    );
  }
}

void main() => runApp(MaterialApp(
      home: AccountPage(),
    ));
