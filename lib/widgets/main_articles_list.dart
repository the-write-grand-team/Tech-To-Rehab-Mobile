import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import '../helpers/list_view_shimmer.dart';

import './listview_article.dart';

class MainArticlesList extends StatefulWidget {
  @override
  _MainArticlesListState createState() => _MainArticlesListState();
}

class _MainArticlesListState extends State<MainArticlesList> {
  @override
  Widget build(BuildContext context) {
    final _articlesGet = Provider.of<Articles>(context);
    final _articles = _articlesGet.articles;
    print('done');
    //print(_articles[0].image);
    return _articles.length <= 0
        ? ListViewShimmer()
        : Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 0.5,
            ),
            child: Column(
              children: _articles.map((mapped) {
                return Column(
                  children: <Widget>[
                    ArticleListViewCard(mapped),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              }).toList(),
            ),
          );
  }
}
