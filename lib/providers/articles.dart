import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/post.dart';

class Articles with ChangeNotifier {
  List articles = [];
  int itemCount;

  int get articulo {
    return articles.length;
  }

  Future<String> getMediaUrl(String featuredUrl) async {
    String image = '';
    var getter = await http.get(featuredUrl);
    var response = json.decode(getter.body);
    image = response['media_details']['sizes']['medium']['source_url'];

    if (image != '' && image != null) {
      print('image is $image');
      notifyListeners();
      return image;
    }
    //var response = json.decode(getter.response);
    //print('response is ${getter['body']}');
    //var decodedGetter = json.decode(getter.body);
    //if (!image.isNotEmpty || image != null) {
    //print('image is ${image.toString()}');
    //return image;
    // }
  }

  Future<void> fetchArticles() async {
    const url = 'https://techtorehab.com/wp-json/wp/v2/posts';

    try {
      final posts = await http.get(url);
      final finalPosts = json.decode(posts.body) as List<dynamic>;
      final List<Post> _articles2 = [];

      finalPosts.forEach((value) async {
        var imageGetFunction =
            getMediaUrl(value['_links']['wp:featuredmedia'][0]['href']);

        return _articles2.add(
          Post(
            title: value['title']['rendered'],
            author: value['author'],
            time: value['date'],
            content: value['content']['rendered'],
            excerpt: value['excerpt']['rendered'],
            image: await imageGetFunction,
            featured: value['powerkit_post_featured'] == null ||
                    value['powerkit_post_featured'].length <= 0
                ? false
                : true,
          ),
        );
      });
      articles = _articles2;
      print('Featured is ${articles[1]}');
      notifyListeners();
    } catch (error) {
      print(error);
    }
    //print(_articles[0].title);
  }
}
