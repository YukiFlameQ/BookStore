import "package:flutter/material.dart";
// ignore: unused_import
import 'package:flutter_application_1/widgets/page_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
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
          TextField(
            obscureText: !showPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Please input Password',
              suffixIcon: IconButton(
                icon: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign in'),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('New to BookStore? '),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'register');
                },
                child: const Text(
                  'Create an account.',
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
