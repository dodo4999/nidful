// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nid/api/api.dart';
import 'package:nid/explore_page.dart';
import 'package:nid/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // isloading

  bool _isLoading = false;

  // Textcontroller

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // ScaffoldState scaffoldState;
  // SHow error message
  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

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
              Center(child: Image.asset('assets/login1.png')),
              // const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Text('Login',
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
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email address',
                        hintText: 'Enter your email',
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
                    const SizedBox(height: 3.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 10.0),
                            ),
                          ],
                        ),
                        Text(
                          'Forgetten password?',
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 10.0),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: _isLoading ? null : _login,
                      child: Text(_isLoading ? 'Logging...' : 'Login'),
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
                          'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 12.0),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    var data = {
      'email': _emailController.text,
      'password': _passwordController.text,
    };

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);
    if (body['success'] != true) {
      _showMsg(body['message']);
    } else {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Explore()));
    }
    setState(() {
      _isLoading = false;
    });

    // print(body);
  }
}
