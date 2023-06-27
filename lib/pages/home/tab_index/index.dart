import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/info/index.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBar(),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: const <Widget>[
        Info(
          showTitle: true,
        ),
      ]),
    );
  }
}
