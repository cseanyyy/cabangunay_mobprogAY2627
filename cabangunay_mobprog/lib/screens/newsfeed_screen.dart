import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsFeedCard(
          userName: 'Csean Cabangunay',
          postContent: 'Bakal Ako',
          numOfLikes: 69,
          avatarPath: 'assets/images/jane.jpg',
          date: 'November 16',
        ),
        NewsFeedCard(
          userName: 'Kevin Durant',
          postContent: 'IM ME, I DO ME, AND I CHILL',
          numOfLikes: 666,
          hasImage: true,
          avatarPath: 'assets/images/kd.jpg',
          postImagePath: 'assets/images/kd2.jpg',
          date: 'December 2',
        ),
      ],
    );
  }
}