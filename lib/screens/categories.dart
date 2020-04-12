import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        textTheme: Theme.of(context).textTheme,
        iconTheme: IconThemeData(color:Colors.black87),
      ),
    );
  }
}
