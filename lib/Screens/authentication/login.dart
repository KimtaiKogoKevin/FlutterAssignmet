import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
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
              'Login',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(label: Text('Username')),
              controller: _username,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ' enter username ';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(label: Text('Password')),
              obscureText: true,
              controller: _password,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ' enter password ';
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

                      userLogin();


                  }
                },
                child: const Text('Submit'),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text(
                'Register?',
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
// Function that calls  Login API using http and performs login
  Future  userLogin() async{
    var urlLogin = Uri.parse('http://apiforshopandgo.pythonanywhere.com/shopngo-api/login/');
    Map mappedData = {
      'username' : _username.text,
      'password' : _password.text
    };
    print("JSON DATA: $mappedData");
    http.Response response = await http.post(urlLogin, body: mappedData);
    var data = jsonDecode(response.body);
    print("DATA:$data");

    switch (response.statusCode) {
      case 200:
        Navigator.pushNamed(context,'screen2');

        return  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login Success')),
        );
      default:
        return  ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login Fail')),
        );
    }
  }
}
