import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/home/info/index.dart';

class StoreIndex extends StatelessWidget {
  const StoreIndex({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Store', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.teal),),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: const <Widget>[
       Info(),
       Info(),
       Info(),
      ]
      ),
      
    );
  }
}
