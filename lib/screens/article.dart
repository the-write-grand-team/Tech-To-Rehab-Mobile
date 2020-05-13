import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';
import 'package:network_image_to_byte/network_image_to_byte.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

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
                onPressed: () async {
                  final byteImage = await networkImageToByte(
                      'https://images.ctfassets.net/hrltx12pl8hq/1fR5Y7KaK9puRmCDaIof7j/09e2b2b9eaf42d450aba695056793607/vector1.jpg');
                  await WcFlutterShare.share(
                    sharePopupTitle: 'I am sharing this',
                    text: 'Tis is text',
                    fileName: 'share.png',
                    subject: 'This is subject',
                    mimeType: 'image/gif',
                    bytesOfFile: byteImage,
                  );
                },
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
            elevation: 0.8,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInImage(
                        placeholder: AssetImage(
                          'assets/images/imageLoader.gif',
                        ),
                        height: 240,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          article.image,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          article.title.toUpperCase(),
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      HtmlWidget(
                        article.content,
                        webView: false,
                        textStyle: GoogleFonts.lato(
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
