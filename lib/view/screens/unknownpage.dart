import 'package:flutter/material.dart';
class UnknowPage extends StatelessWidget {
  const UnknowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unknow page'),
      ),
      body: Center(child: Text('Unfound Page')),
    );
  }
}