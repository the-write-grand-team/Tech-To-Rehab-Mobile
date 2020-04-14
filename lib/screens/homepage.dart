import 'package:flutter/material.dart';
import '../providers/articles.dart';
import 'package:provider/provider.dart';
import '../widgets/main_articles_list.dart';
import '../widgets/article_slider.dart';
import '../widgets/drawer.dart';
import '../widgets/logo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _init = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    if (_init) {
      await Provider.of<Articles>(context).fetchArticles();
    }

    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black54),
        textTheme: Theme.of(context).textTheme,
        leading: Builder(
          builder: (ctx) => IconButton(
            icon: Icon(Icons.short_text),
            onPressed: () => Scaffold.of(ctx).openDrawer(),
          ),
        ),
        elevation: 0.0,
        title: Logo(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              return;
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ArticlesSlider(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Your Daily Updates',
                style: Theme.of(context).textTheme.display1,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MainArticlesList(),
          ],
        ),
      ),
    );
  }
}
