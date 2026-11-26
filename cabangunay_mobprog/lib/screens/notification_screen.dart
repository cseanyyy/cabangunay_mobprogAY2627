import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart';

class _NotificationData {
  final String name;
  final String post;
  final String description;

  const _NotificationData({
    required this.name,
    required this.post,
    required this.description,
  });
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<_NotificationData> _notifications = const [
    _NotificationData(
      name: 'Stephen Curry',
      post: 'Range stays extended. Night night.',
      description: 'Posted a new game-day highlight photo.',
    ),
    _NotificationData(
      name: 'LeBron James',
      post: 'Year 23 and still putting in the work every single morning.',
      description: 'Shared a new training update on the feed.',
    ),
    _NotificationData(
      name: 'Devin Booker',
      post: 'Mid-range rhythm feels automatic tonight.',
      description: 'Posted a new status update.',
    ),
    _NotificationData(
      name: 'James Harden',
      post: 'Step-back threes and dimes all night long.',
      description: 'Shared a new postgame recap photo.',
    ),
    _NotificationData(
      name: 'Anthony Edwards',
      post: 'High energy, big dunks, zero hesitation.',
      description: 'Posted a new dunk highlight on the feed.',
    ),
    _NotificationData(
      name: 'Victor Wembanyama',
      post: 'Blocking shots at the rim and stretching the floor.',
      description: 'Shared a postgame stat update.',
    ),
    _NotificationData(
      name: 'Giannis Antetokounmpo',
      post: 'Run and dunk mode activated. Keep pushing!',
      description: 'Posted a new workout and game photo.',
    ),
    _NotificationData(
      name: 'Luka Doncic',
      post: 'Controlling the pace and reading every defense.',
      description: 'Shared a new post on the NewsFeed.',
    ),
    _NotificationData(
      name: 'Shai Gilgeous-Alexander',
      post: 'Smooth pull-ups and steady poise in crunch time.',
      description: 'Posted a new clutch-time photo.',
    ),
    _NotificationData(
      name: 'Nikola Jokic',
      post: 'Triple-double mindset—find the open man every time.',
      description: 'Shared a new postgame thought.',
    ),
    _NotificationData(
      name: 'Stephen Curry',
      post: 'Logo Three Practice',
      description: 'Liked your reaction to his post.',
    ),
    _NotificationData(
      name: 'LeBron James',
      post: 'Chasedown Block Replay',
      description: 'Commented: "Appreciate the support!"',
    ),
    _NotificationData(
      name: 'Devin Booker',
      post: '70-Point Throwback',
      description: 'Reacted to your comment on his post.',
    ),
    _NotificationData(
      name: 'James Harden',
      post: 'Double-Double Streak',
      description: 'Mentioned you in a postgame thread.',
    ),
    _NotificationData(
      name: 'Anthony Edwards',
      post: 'Poster Dunk Clip',
      description: 'Liked your comment on his highlight.',
    ),
    _NotificationData(
      name: 'Victor Wembanyama',
      post: '5x5 Stat Line Watch',
      description: 'Shared a new defensive highlight.',
    ),
    _NotificationData(
      name: 'Giannis Antetokounmpo',
      post: 'Eurostep Transition',
      description: 'Reacted to your comment on the feed.',
    ),
    _NotificationData(
      name: 'Luka Doncic',
      post: 'Step-Back Game Winner',
      description: 'Liked your reaction on his latest post.',
    ),
    _NotificationData(
      name: 'Shai Gilgeous-Alexander',
      post: '30-Point Streak',
      description: 'Commented on a shared NBA highlight.',
    ),
    _NotificationData(
      name: 'Nikola Jokic',
      post: 'No-Look Touch Pass',
      description: 'Reacted to your comment on his post.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return NotificationItem(
            name: item.name,
            post: item.post,
            description: item.description,
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1),
      ),
    );
  }
}