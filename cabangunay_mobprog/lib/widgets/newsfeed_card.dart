import 'package:flutter/material.dart';

class NewsFeedCard extends StatelessWidget {
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
    required this.numOfLikes,
    required this.date,
    this.hasImage = false,
    this.avatarPath,
    this.postImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Avatar, user name, and post date
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      avatarPath != null ? AssetImage(avatarPath!) : null,
                  child: avatarPath == null ? const Icon(Icons.person) : null,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Post text content
            Text(
              postContent,
              style: const TextStyle(fontSize: 14),
            ),

            // Dynamic image area when hasImage is true
            if (hasImage) ...[
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: postImagePath != null
                    ? Image.asset(
                        postImagePath!,
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Placeholder(
                          color: Colors.grey,
                          strokeWidth: 1.5,
                        ),
                      ),
              ),
            ],

            const SizedBox(height: 10),
            const Divider(height: 1),
            const SizedBox(height: 6),

            // Likes count
            Text(
              '$numOfLikes likes',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),

            // Widget-based Like and Comment buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _FeedActionButton(
                  assetPath: 'assets/images/like.png',
                  label: 'Like',
                  onTap: () {},
                ),
                _FeedActionButton(
                  assetPath: 'assets/images/comment.png',
                  label: 'Comment',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedActionButton extends StatelessWidget {
  final String assetPath;
  final String label;
  final VoidCallback onTap;

  const _FeedActionButton({
    required this.assetPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetPath,
              width: 18,
              height: 18,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}