import "package:flutter/material.dart";
// ignore: unused_import
import 'package:flutter_application_1/widgets/page_content.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Register'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: ListView(children: <Widget>[
          const TextField(
            decoration: InputDecoration(
                labelText: 'User Name', hintText: 'Please input user name'),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Please input Password',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Please input Password',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign up'),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Already have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'login');
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
