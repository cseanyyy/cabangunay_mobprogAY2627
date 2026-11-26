import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class _PostData {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? avatarPath;
  final String? postImagePath;

  const _PostData({
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasImage = false,
    this.avatarPath,
    this.postImagePath,
  });
}

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  final List<_PostData> _posts = const [
    _PostData(
      userName: 'Stephen Curry',
      postContent: 'Range stays extended. Night night.',
      numOfLikes: 940,
      date: 'November 16',
      hasImage: true,
      avatarPath: 'assets/images/stephen.jpg',
      postImagePath: 'assets/images/stephen.jpg',
    ),
    _PostData(
      userName: 'LeBron James',
      postContent: 'Year 23 and still putting in the work every single morning.',
      numOfLikes: 1250,
      date: 'November 17',
      hasImage: true,
      avatarPath: 'assets/images/lebron.jpg',
      postImagePath: 'assets/images/lebron.jpg',
    ),
    _PostData(
      userName: 'Devin Booker',
      postContent: 'Mid-range rhythm feels automatic tonight.',
      numOfLikes: 485,
      date: 'November 18',
      hasImage: false,
      avatarPath: 'assets/images/devin.jpg',
    ),
    _PostData(
      userName: 'James Harden',
      postContent: 'Step-back threes and dimes all night long.',
      numOfLikes: 612,
      date: 'November 19',
      hasImage: true,
      avatarPath: 'assets/images/james.jpg',
      postImagePath: 'assets/images/james.jpg',
    ),
    _PostData(
      userName: 'Anthony Edwards',
      postContent: 'High energy, big dunks, zero hesitation.',
      numOfLikes: 830,
      date: 'November 20',
      hasImage: true,
      avatarPath: 'assets/images/anthony.jpg',
      postImagePath: 'assets/images/anthony.jpg',
    ),
    _PostData(
      userName: 'Victor Wembanyama',
      postContent: 'Blocking shots at the rim and stretching the floor.',
      numOfLikes: 760,
      date: 'November 21',
      hasImage: false,
      avatarPath: 'assets/images/victor.jpg',
    ),
    _PostData(
      userName: 'Giannis Antetokounmpo',
      postContent: 'Run and dunk mode activated. Keep pushing!',
      numOfLikes: 910,
      date: 'November 22',
      hasImage: true,
      avatarPath: 'assets/images/giannis.jpg',
      postImagePath: 'assets/images/giannis.jpg',
    ),
    _PostData(
      userName: 'Luka Doncic',
      postContent: 'Controlling the pace and reading every defense.',
      numOfLikes: 875,
      date: 'November 23',
      hasImage: false,
      avatarPath: 'assets/images/luka.jpg',
    ),
    _PostData(
      userName: 'Shai Gilgeous-Alexander',
      postContent: 'Smooth pull-ups and steady poise in crunch time.',
      numOfLikes: 690,
      date: 'November 24',
      hasImage: true,
      avatarPath: 'assets/images/shai.jpg',
      postImagePath: 'assets/images/shai.jpg',
    ),
    _PostData(
      userName: 'Nikola Jokic',
      postContent: 'Triple-double mindset—find the open man every time.',
      numOfLikes: 785,
      date: 'November 25',
      hasImage: false,
      avatarPath: 'assets/images/nikola.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          numOfLikes: post.numOfLikes,
          date: post.date,
          hasImage: post.hasImage,
          avatarPath: post.avatarPath,
          postImagePath: post.postImagePath,
        );
      },
    );
  }
}