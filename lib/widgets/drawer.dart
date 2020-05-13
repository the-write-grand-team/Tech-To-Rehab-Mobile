import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blueAccent[700],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.freepik.com/free-vector/abstract-background-overlays-colours_23-2148455347.jpg'),
                )),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://mpng.subpng.com/20190218/vag/kisspng-runescape-internet-bot-chatbot-avatar-clip-art-an-enterprise-chatbot-builder-platform-botcore-5c6b87f4e91262.2708439915505510289547.jpg',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, -0.1),
                  child: Container(
                    width: 200,
                    child: Text(
                      'Muhammad Afzaal Afridi Khan Baba',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, 0.3),
                  child: Text(
                    'Youtuber',
                    style: GoogleFonts.lato(
                      color: Colors.white60,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(
              Icons.home,
            ),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(
              Icons.settings,
            ),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(
              Icons.brightness_2,
            ),
          ),
        ],
      ),
    );
  }
}
