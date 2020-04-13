import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import 'slider_article.dart';
import '../helpers/slider_shimmer.dart';

class ArticlesSlider extends StatefulWidget {
  @override
  _ArticlesSliderState createState() => _ArticlesSliderState();
}

class _ArticlesSliderState extends State<ArticlesSlider> {
  final items = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    final _articles = Provider.of<Articles>(context).articles;

    return CarouselSlider(
        viewportFraction: 0.8,
        autoPlay: false,
        //autoPlayInterval: Duration(seconds: 3),
        height: 330.0,
        initialPage: 2,
        items: _articles.length <= 0
            ? [
                SliderShimmer(),
              ]
            : _articles.map((mapped) {
                return mapped.featured ? SliderArticle(mapped) : SizedBox();
              }).toList());
  }
}
