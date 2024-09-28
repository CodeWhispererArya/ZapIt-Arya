// contact_screen.dart

import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Contact> _contacts = [
    Contact(name: 'John Doe', phoneNumber: '1234567890'),
    Contact(name: 'Jane Doe', phoneNumber: '0987654321'),
    Contact(name: 'Bob Smith', phoneNumber: '5551234567'),
    // Add more contacts here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Contact'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_contacts[index].name),
            subtitle: Text(_contacts[index].phoneNumber),
            onTap: () {
              // Handle contact selection here
              print('Selected contact: ${_contacts[index].name}');
            },
          );
        },
      ),
    );
  }
}

class Contact {
  String name;
  String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}
