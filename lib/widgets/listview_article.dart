import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:html/parser.dart';

class ArticleListViewCard extends StatelessWidget {
  var mapped;

  ArticleListViewCard(this.mapped);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      elevation: 1,
      child: Row(children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            child: Image.network(
              mapped.image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15),
                child: Text(
                  parse(mapped.title).documentElement.text,
                  style: Theme.of(context).textTheme.headline,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 10,
                  bottom: 0,
                ),
                child: Text(parse(mapped.excerpt).documentElement.text,
                    maxLines: 1, style: Theme.of(context).textTheme.body1),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.zero,
          child: IconButton(
              icon: Icon(
                Icons.bookmark_border,
                size: 25,
                color: Colors.black87,
              ),
              onPressed: () {}),
        ),
        Container(
          padding: EdgeInsets.zero,
          child: IconButton(
              icon: Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.black87,
              ),
              onPressed: () {}),
        ),
      ]),
    );
  }
}
