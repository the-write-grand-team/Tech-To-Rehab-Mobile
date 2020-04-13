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
            width: double.infinity,
            padding: EdgeInsets.all(
              0.5,
            ),
            child: Column(
              children: _articles.map((mapped) {
                return Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    ArticleListViewCard(mapped),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                  ],
                );
              }).toList(),
            ),
          );
  }
}
