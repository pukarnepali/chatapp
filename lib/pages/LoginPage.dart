// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // email and password controller

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // tap to go to register now

  final void Function()? onTap;

  LoginPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  // login Method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          //welcome back message
          Text(
            "Welcome back, you've been missed!",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
          SizedBox(
            height: 25,
          ),
          //email textfield
          MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),
          SizedBox(
            height: 10,
          ),

          //pw textfield
          MyTextField(
            hintText: "Password",
            obscureText: true,
            controller: _passwordController,
          ),
          SizedBox(
            height: 25,
          ),
          //login button
          MyButton(
            text: 'Login',
            onTap: login,
          ),
          SizedBox(
            height: 25,
          ),
          //register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member? ",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
