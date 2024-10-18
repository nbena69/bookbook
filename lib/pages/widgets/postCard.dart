import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final String timeAgo;

  const PostCard({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/126596584?s=400&u=75592e57decbc75cbff2f569c34c08bcad84ecee&v=4'), // Votre photo de profil
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Na'el Benaïssa",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(timeAgo),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.network(imageUrl, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(content),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.thumb_up),
                Icon(Icons.comment),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
