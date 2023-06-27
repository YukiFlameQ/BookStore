import "package:flutter/material.dart";

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('404'),
      ),
      body: const Center(
          child: Text('Sorry, the page you visit does not exists!')),
    );
  }
}
