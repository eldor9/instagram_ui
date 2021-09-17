import 'package:flutter/material.dart';
import 'package:instagram_ui/moduls/post_model.dart';
import 'package:instagram_ui/moduls/story_model.dart';
import 'package:instagram_ui/widgets/widgets.dart';

class FeedPage extends StatefulWidget {
  static final String id = 'feed_page';

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Story> _stories = [
    Story('Jasmine', 'assets/images/user_1.jpeg'),
    Story('Brian', 'assets/images/user_2.jpeg'),
    Story('Cristina', 'assets/images/user_3.jpeg'),
    Story('Jasmine', 'assets/images/user_1.jpeg'),
    Story('Brian', 'assets/images/user_2.jpeg'),
    Story('Cristina', 'assets/images/user_3.jpeg'),
  ];
  List<Post> _posts = [
    Post("assets/images/user_1.jpeg", "Jasmine", "assets/images/feed_1.jpeg",
        "Conservator nail aliquid omnis consequatur."),
    Post("assets/images/user_2.jpeg", "Henri", "assets/images/feed_2.jpeg",
        "Consequatur nihil aliquid omnis consequatur."),
    Post("assets/images/user_3.jpeg", "Cristina", "assets/images/feed_3.jpeg",
        "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Stories',
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text('Watch All',
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
            ),

            // #stories
            Container(
              //color: Colors.black,
              height: 110,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: _stories.map((story) {
                  return makeStory(story);
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _posts.length,
                  itemBuilder: (ctx, i) {
                    return makePost(_posts[i]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
