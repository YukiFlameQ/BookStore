import "package:flutter/material.dart";

import "../routes.dart";

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Current Page: $name')),
        body: ListView(
          children: <Widget>[
            TextButton(
              child: Text(Routes.home),
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              },
            ),
            TextButton(
              child: Text(Routes.login),
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
            ),
            TextButton(
              child: const Text('Not Exist'),
              onPressed: () {
                Navigator.pushNamed(context, '/aaaa');
              },
            ),
            TextButton(
              child: const Text('Book Detail Page, id: 2222'),
              onPressed: () {
                Navigator.pushNamed(context, '/book/2222');
              },
            ),
          ],
        ));
  }
}
