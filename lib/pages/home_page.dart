import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        brightness: Brightness.dark,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Feather.camera),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Feather.tv),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Feather.send),
            color: Colors.grey,
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Feather.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), title: Text('Add')),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart), title: Text('Favorite')),
          BottomNavigationBarItem(
              icon: Icon(Feather.user), title: Text('Users')),
        ],
      ),
    );
  }
}
