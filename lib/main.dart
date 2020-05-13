import 'dart:ui';
import 'package:flutter/material.dart';
import './providers/articles.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './screens/categories.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/article.dart';

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
                fontSize: 19,
                fontFamily: 'Avenir Next',
                fontWeight: FontWeight.w400,
              ),
              headline: GoogleFonts.roboto(
                color: Colors.black87,
                fontSize: 26,
                //fontFamily: 'Avenir Next',
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
              display1: GoogleFonts.openSans(
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              body1: TextStyle(
                fontSize: 16,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                height: 1.2,
              ),
            ),
          ),
          home: HomePage(),
          routes: {
            'categories': (ctx) => CategoriesScreen(),
            'article': (ctx) => ArticleScreen(),
          }),
    );
  }
}
