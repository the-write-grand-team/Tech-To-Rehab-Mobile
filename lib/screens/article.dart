import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments as Map;
    final article = Provider.of<Articles>(context).fetchArticle(args['id']);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text('', style: Theme.of(context).textTheme.title),
            actions: [
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.format_size),
                onPressed: () {},
              ),
            ],
            iconTheme: IconThemeData(color: Colors.black87),
            centerTitle: true,
            elevation: 0,
            floating: true,
            expandedHeight: 200,
          ),
        ],
      ),
    );
  }
}
