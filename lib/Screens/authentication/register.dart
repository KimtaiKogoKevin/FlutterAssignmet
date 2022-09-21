import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(label: Text('Email')),

              controller: _email,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ' Enter email';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(label: Text('Username')),

              controller: _username,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ' Enter username';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Password'),
              ),
              obscureText: true,

              controller: _password,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ' Enter password';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {

                      userRegistration();

                    }

                },
                child: const Text('Submit'),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
              child: const Text(
                'Login?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
//Function that calls Registration APi using http and performs registration
  Future userRegistration() async {
    var urlRegister = Uri.parse(
        'http://apiforshopandgo.pythonanywhere.com/shopngo-api/register/');
    Map mappedData = {
      'email': _email.text,
      'username': _username.text,
      'password': _password.text
    };
    print("JSON DATA: $mappedData");
    http.Response response = await http.post(urlRegister, body: mappedData);
    var data = jsonDecode(response.body);
    print("DATA:$data");
    switch (response.statusCode) {
      case 200:
        Navigator.pushNamed(context,'login');

        return  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration Success')),
        );
      default:
        return  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration Fail')),
        );
    }

  }
}
