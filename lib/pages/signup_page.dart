// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = ''; // Initialize with an empty string
  String _password = ''; // Initialize with an empty string
  String _confirmPassword = ''; // Initialize with an empty string

  // Rest of your code...


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign up',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: Theme.of(context).textTheme.bodyLarge, // Changed to bodyText1
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              // Rest of your code...
            ],
          ),
        ),
      ),
    );
  }
}