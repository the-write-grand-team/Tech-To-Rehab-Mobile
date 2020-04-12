import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              FadeInImage(
                placeholder: NetworkImage(
                  'https://chesterspirit.com/wp-content/uploads/2016/02/Plain-Grey-Background.jpg',
                ),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
                image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/000/268/296/non_2x/abstract-background-vector.jpg',
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                color: Colors.black12,
                child: FlatButton.icon(
                  icon: Icon(Icons.account_circle, size: 33),
                  textColor: Colors.white,
                  label: Text(
                    'Welcome, Afzaal Afridi',
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Avenir Next'),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[700],
                ),
                title: Text(
                  'Home',
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.category,
                  color: Colors.blue[700],
                ),
                title: Text(
                  'Categories',
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('categories');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
