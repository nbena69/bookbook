import 'package:flutter/material.dart';
import 'package:my_bookbook/models/post.dart';
import 'package:my_bookbook/utils/fonctions.dart';
import 'package:my_bookbook/data/data.dart';

class Posts extends StatelessWidget {
  Posts({super.key});

  final String userName = Data.user().getName;
  final String userImageAvatar = Data.user().getImageAvatar;
  final List<Post> userPosts = Data.user().getPosts;

  @override
  Widget build(BuildContext context) {
    List<Widget> elements = [
      // Elements du block
      Fonctions.afficherTitreSection('Mes messages')
    ];

    for (Post post in userPosts) {
      elements.add(viewPost(userImageAvatar, userName, post.getStringDate, post.getImage,
          post.getDescription, post.getLikes, post.getComments));
    }

    return Column(
      children: elements,
    );
  }
}

Container viewPost(userImageAvatar, userName, stringDate, image, description, likes, comments) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromRGBO(225, 225, 225, 1),
    ),
    child: Column(
      children: [
        Row(
          children: [
            avatar(userImageAvatar),
            const Padding(padding: EdgeInsets.only(left: 8)),
            Text(userName,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                )),
            const Spacer(),
            Text(
              stringDate,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Image.asset(
              'lib/assets/images/$image',
              fit: BoxFit.fill,
            )),
        Text(
          description,
          style: const TextStyle(color: Colors.blueAccent),
          textAlign: TextAlign.center,
        ),
        const Divider(),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.favorite),
            Text(likes.toString()),
            const Icon(Icons.message),
            Text("${comments.toString()} Commentaires")
          ],
        ),
      ],
    ),
  );
}

Container avatar(String userImageAvatar) {
  return Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage('lib/assets/images/$userImageAvatar'),
        fit: BoxFit.cover,
      ),
      border: Border.all(color: Colors.white, width: 2),
    ),
  );
}
