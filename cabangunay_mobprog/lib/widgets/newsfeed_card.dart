import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: ScreenUtil().setWidth(36),
                  height: ScreenUtil().setHeight(36),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(ScreenUtil().setSp(6)),
                  ),
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.white,
                    size: ScreenUtil().setSp(20),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            hasImage == true
                ? Container(
                    height: ScreenUtil().setHeight(300),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Placeholder(),
                  )
                : SizedBox(
                    height: ScreenUtil().setHeight(1),
                  ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: FB_PRIMARY,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.thumb_up, size: 10, color: Colors.white),
                        ),
                        Transform.translate(
                          offset: Offset(-4, 0),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.favorite, size: 10, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 4),
                    CustomText(
                      text: numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: '42 Comments',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    CustomText(
                      text: '5 Shares',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_outlined, color: Colors.grey),
                  label: CustomText(text: 'Like', color: Colors.grey, fontSize: ScreenUtil().setSp(12)),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble_outline, color: Colors.grey),
                  label: CustomText(text: 'Comment', color: Colors.grey, fontSize: ScreenUtil().setSp(12)),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined, color: Colors.grey),
                  label: CustomText(text: 'Share', color: Colors.grey, fontSize: ScreenUtil().setSp(12)),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: 'Most relevant ▼',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Row(
              children: [
                Container(
                  width: ScreenUtil().setWidth(28),
                  height: ScreenUtil().setHeight(28),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(ScreenUtil().setSp(4)),
                  ),
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.white,
                    size: ScreenUtil().setSp(16),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(10)),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(35),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(18)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Write a comment...',
                          fontSize: ScreenUtil().setSp(11),
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Icon(Icons.gif_box_outlined, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.sentiment_satisfied_alt, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.camera_alt_outlined, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.gif, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.tag_faces, size: 18, color: Colors.grey),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}