// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nid/api/api.dart';
import 'package:nid/email_notice.dart';
import 'package:nid/explore_page.dart';
import 'package:nid/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // use Textcontroller

  final _fullnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('assets/logo1.png'),
              ),
              Center(child: Image.asset('assets/register1.png')),
              // const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Text('Register',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Text('Welcome back',
                    style: TextStyle(color: Colors.grey[500], fontSize: 10.0)),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _fullnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Fullname',
                        hintText: 'Enter your fullname',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Enter your username',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address',
                        hintText: 'Enter your address',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: _passwordConfirmController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        hintText: 'Enter your password',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: _isLoading ? null : _handleRegister,
                      child: Text(_isLoading ? 'Creating....' : 'Continue'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        minimumSize: const Size(500, 50),
                        maximumSize: const Size(500, 50),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 12.0),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleRegister() async {
    setState(() {
      _isLoading = true;
    });

    var data = {
      'name': _fullnameController.text,
      'username': _usernameController.text,
      'email': _emailController.text,
      'phone_number': _phoneNumberController.text,
      'address': _addressController.text,
      'password': _passwordController.text,
      'password_confirmation': _passwordConfirmController.text
    };

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));

      var userJson = localStorage.getString('user');
      var user = json.decode(userJson ?? '');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Explore()),
      );

      setState(() {
        _isLoading = false;
      });
    }
  }
}
