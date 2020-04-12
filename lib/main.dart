import 'dart:ui';
import 'package:flutter/material.dart';
import './providers/articles.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './screens/categories.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Articles(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          accentColor: Colors.blue[700],
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontFamily: 'Avenir Next',
              fontWeight: FontWeight.w400,
            ),
            body1: TextStyle(
              fontSize: 16,
              fontFamily: 'Public Sans',
            ),
          ),
        ),
        home: HomePage(),
        routes: {
          'categories': (ctx) => CategoriesScreen(),
        }
      ),
    );
  }
}
