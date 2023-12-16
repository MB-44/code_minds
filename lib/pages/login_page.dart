// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_escapes, unused_import

import 'package:flutter/material.dart';
import 'package:code_minds/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              //icon
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 50),

              // welcome back!
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 10),

              // user name text field
              MyTextField(
                controller: userNameController,
                hintText: "Username",
                obscureText: false,
              ),

              SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: false,
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
