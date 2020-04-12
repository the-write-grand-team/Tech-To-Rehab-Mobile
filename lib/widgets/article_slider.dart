import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ArticlesSlider extends StatefulWidget {
  @override
  _ArticlesSliderState createState() => _ArticlesSliderState();
}

class _ArticlesSliderState extends State<ArticlesSlider> {
  final items = ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      viewportFraction: 0.8,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      height: 230.0,
      items: [
        Image.network(
          'https://i.pinimg.com/736x/31/16/1b/31161bc66a1d4e4c8e7991548ef5eb54.jpg',
        ),
        Card(
          child: Column(
            children: [
              Expanded(
                child: ListTile(
                  leading: Text('Hello'),
                  title: Text('title'),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Expanded(
                child: ListTile(
                  leading: Text('Hello'),
                  title: Text('title'),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
