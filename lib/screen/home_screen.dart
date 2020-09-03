import 'package:chat/widget/category_selector.dart';
import 'package:chat/widget/favorite_contacts.dart';
import 'package:chat/widget/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {}),
          title: Text(
            "Chat",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                iconSize: 30,
                color: Colors.white,
                onPressed: () {}),
          ],
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                child: Column(
                  children: [
                    FavoriteContacts(),
                    RecentChats(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
