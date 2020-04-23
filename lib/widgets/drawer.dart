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
              color: Colors.greenAccent[400],
            ),
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
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 200,
                    child: Text(
                      'Muhammad Afzaal Afridi Khan Baba',
                      style: GoogleFonts.lato(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, 0.5),
                  child: Text(
                    'Youtuber',
                    style: GoogleFonts.lato(
                      color: Colors.black87,
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
            title: Text('HOME'),
            leading: Icon(
              Icons.verified_user,
            ),
            subtitle: Text('subtitle'),
            trailing: Text('trailing'),
          ),
        ],
      ),
    );
  }
}
