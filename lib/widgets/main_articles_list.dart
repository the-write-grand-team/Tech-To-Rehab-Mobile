import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import '../helpers/list_view_shimmer.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

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
        : Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              elevation: 2,
              child: Column(
                  children: _articles.map(
                (mapped) {
                  //mapped.image == null
                  //? Center(
                  //   child: CircularProgressIndicator(),
                  // )
                  //: NetworkImage(mapped.image);
                  return (Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      mapped.image == null
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : FadeInImage(
                              placeholder: NetworkImage(
                                  'https://www.solidbackgrounds.com/images/2560x1440/2560x1440-davys-grey-solid-color-background.jpg'),
                              image: NetworkImage(mapped.image),
                              fit: BoxFit.cover,
                              height: 200,
                              width: double.infinity,
                            ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              mapped.title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(mapped.excerpt)
                          ],
                        ),
                      ),
                    ],
                  ));
                },
              ).toList()),
            ),
          );
  }
}
