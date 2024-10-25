import 'package:flutter/material.dart';
import 'package:my_bookbook/models/friend.dart';
import 'package:my_bookbook/utils/fonctions.dart';
import 'package:my_bookbook/data/data.dart';


class Friends extends StatelessWidget {
  Friends({super.key});

  final List<Friend> userFriends = Data.user().getFriends;

  @override
  Widget build(BuildContext context) {

    double screenSize = MediaQuery.of(context).size.width;

    List<Column> listFriends = [];

    List<Widget> elements = [ // Elements du block
      Fonctions.afficherTitreSection('Mes Amis'),
      Row (
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: listFriends)
    ];

    for (Friend friend in userFriends) {
      listFriends.add(viewFriend(screenSize, friend.getImage, friend.getPseudo));
    }

    return Column(
      children: elements,
    );
  }
}

Column viewFriend(screenSize,image,pseudo) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        width: screenSize * 0.25,
        height: screenSize * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/images/$image'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Text(pseudo),
      const Padding(padding: EdgeInsets.only(bottom: 5))
    ],
  );
}

