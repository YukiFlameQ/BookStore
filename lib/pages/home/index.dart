import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/home/tab_index/index.dart';
import 'package:flutter_application_1/pages/home/tab_search/index.dart';
import 'package:flutter_application_1/pages/home/tab_store/index.dart';
import 'package:flutter_application_1/pages/login.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/page_content.dart';

List<Widget> tabViewList = [
  const TabIndex(),
  const SearchIndex(),
  const StoreIndex(),
  const LoginPage(),
];

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
  const BottomNavigationBarItem(label: 'Store', icon: Icon(Icons.store)),
  const BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
