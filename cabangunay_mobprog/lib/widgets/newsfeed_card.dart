import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? avatarPath;
  final String? postImagePath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    required this.date,
    this.hasImage = false,
    this.avatarPath,
    this.postImagePath,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  late int _likes;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _likes = widget.numOfLikes;
  }

  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likes--;
        _isLiked = false;
      } else {
        _likes++;
        _isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String? imageToShow =
        widget.hasImage ? (widget.postImagePath ?? widget.avatarPath) : null;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      elevation: 1.5,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: FB_SECONDARY,
                  backgroundImage: widget.avatarPath != null
                      ? AssetImage(widget.avatarPath!)
                      : null,
                  child: widget.avatarPath == null
                      ? const Icon(Icons.person, color: FB_TEXT_COLOR_WHITE)
                      : null,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.userName,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: FB_DARK_PRIMARY,
                        fontFamily: 'sans-serif',
                      ),
                      CustomText(
                        text: widget.date,
                        fontSize: 12.sp,
                        color: Colors.grey.shade600,
                        fontFamily: 'sans-serif',
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.grey.shade700),
              ],
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: widget.postContent,
              fontSize: 14.sp,
              color: Colors.black87,
              fontFamily: 'sans-serif',
            ),
            if (imageToShow != null) ...[
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxHeight: 280.h,
                ),
                color: FB_DARK_PRIMARY,
                child: Image.asset(
                  imageToShow,
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200.h,
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                      child: const Icon(Icons.broken_image, size: 40),
                    );
                  },
                ),
              ),
            ],
            SizedBox(height: 10.h),
            CustomText(
              text: '$_likes likes',
              fontSize: 12.sp,
              color: Colors.grey.shade700,
              fontFamily: 'sans-serif',
            ),
            const Divider(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: _toggleLike,
                  icon: Icon(
                    _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    size: 18.sp,
                    color: _isLiked ? FB_PRIMARY : Colors.grey.shade700,
                  ),
                  label: CustomText(
                    text: 'Like',
                    fontSize: 13.sp,
                    color: _isLiked ? FB_PRIMARY : Colors.grey.shade700,
                    fontFamily: 'sans-serif',
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment_outlined,
                    size: 18.sp,
                    color: Colors.grey.shade700,
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: 13.sp,
                    color: Colors.grey.shade700,
                    fontFamily: 'sans-serif',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}