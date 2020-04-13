import 'package:flutter/cupertino.dart';

class Post {
  String title;
  int author;
  String time;
  String content;
  String excerpt;
  String image;
  bool featured;

  Post({this.title, this.author, this.time, this.content, this.excerpt, this.image, this.featured});
}
