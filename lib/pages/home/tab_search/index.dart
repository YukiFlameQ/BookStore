import 'package:flutter/material.dart';

class SearchIndex extends StatefulWidget {
  const SearchIndex({Key? key}) : super(key: key);
  @override
  _SearchIndexState createState() => _SearchIndexState();
}

class _SearchIndexState extends State<SearchIndex> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.teal),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.teal,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Please enter a book or author name',
                        hintStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('Search');
                }
              });
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Find your books!', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.teal),),
          ),
        ],
      ),
    );
  }
}
