import 'package:flutter/cupertino.dart';

class Post {
  String title;
  int author;
  int id;
  String time;
  String content;
  String excerpt;
  String image;
  bool featured;

  Post({
    this.id,
    this.title,
    this.author,
    this.time,
    this.content,
    this.excerpt,
    this.image,
    this.featured,
  });
}
