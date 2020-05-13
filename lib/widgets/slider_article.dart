import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:html/parser.dart';

class SliderArticle extends StatelessWidget {
  var mapped;

  SliderArticle(this.mapped);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(
        10,
      ),
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FadeInImage(
            width: 600,
            height: 150,
            placeholder: AssetImage('assets/images/imageLoader.gif'),
            fit: BoxFit.cover,
            image: NetworkImage(
              mapped.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  parse(mapped.title).documentElement.text,
                  style: Theme.of(context).textTheme.display1,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  parse(mapped.excerpt).documentElement.text,
                  style: Theme.of(context).textTheme.body1,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.bookmark_border,
                      ),
                      onPressed: () {},
                    ),
                    Text('Hello'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
