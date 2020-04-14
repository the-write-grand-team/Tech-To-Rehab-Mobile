import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart';

class ArticleListViewCard extends StatelessWidget {
  var mapped;

  ArticleListViewCard(this.mapped);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 15,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey[200])),
            child: Image.network(
              mapped.image,
              height: 105,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 15),
                    child: Text(
                      'Welcome to Tech To Rehab From Afzaal afridi',
                      //parse(mapped.title).documentElement.text,
                      style: Theme.of(context).textTheme.headline,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      bottom: 0,
                    ),
                    child: Text(
                      parse(mapped.excerpt).documentElement.text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 25,
                        ),
                        child: Text(
                          'From Science',
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
