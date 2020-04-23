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
          Image.network(
            mapped.image,
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
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
                  style: Theme.of(context).textTheme.headline,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  parse(mapped.excerpt).documentElement.text,
                  style: Theme.of(context).textTheme.body1,
                  maxLines: 2,
                  textAlign: TextAlign.start,
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
