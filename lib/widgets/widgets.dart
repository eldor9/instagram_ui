import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui/moduls/post_model.dart';
import 'package:instagram_ui/moduls/story_model.dart';

Widget makeStory(Story story) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3, color: Color(0xFF8e44ad))),
        child: Container(
          padding: EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image(
              image: AssetImage(story.userImage),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Text(
        story.userName,
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}

Widget makePost(Post post) {
  BuildContext context;

  return Container(
    //padding: EdgeInsets.symmetric(horizontal: 10),
    width: 420,
    color: Colors.black,
    child: Column(
      children: [
        Container(
          width: 420,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image(
                      image: AssetImage(post.userImage),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(post.username, style: TextStyle(color: Colors.white))
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Feather.more_horizontal,
                    color: Colors.white, size: 25),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Image(image: AssetImage(post.postImage), fit: BoxFit.cover),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Feather.heart, color: Colors.grey)),
                  IconButton(
                      icon: Icon(Feather.message_circle, color: Colors.grey)),
                  IconButton(icon: Icon(Feather.send, color: Colors.grey))
                ],
              ),
              IconButton(icon: Icon(Feather.bookmark, color: Colors.grey))
            ],
          ),
        ),
        Container(
          width: 420,
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(children: [
              TextSpan(text: 'Liked by ', style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: 'Simon,',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' Wayne,',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' Marcos,',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' Maison',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              TextSpan(text: ' and ', style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: '2345 others ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold))
            ]),
          ),
        ),
        Container(
          width: 420,
          margin: EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 5,
          ),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.username,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextSpan(
                  text: " ${post.caption}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 14,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "Febuary 2020",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
