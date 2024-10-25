import 'package:flutter/material.dart';
import 'package:my_bookbook/models/friend.dart';
import 'package:my_bookbook/models/user.dart';
import 'package:my_bookbook/models/post.dart';

//  jeux de donnès statiques pour exemple
class Data {
  static User user() {
    User user = User(
        'Stéphane Delêtre',
        'sdeletre1.jpg',
        'beach.jpg',
        {
          Icons.home: 'La Pocatiere, Canada',
          Icons.work: 'Enseignant',
          Icons.favorite: 'Passionné de développement Web',
          Icons.mail: 'sdeletre@gmail.com',
        },
        friends(),
        posts()
    );
    return user;
  }

  static List<Friend> friends() {
    List<Friend> listFriends = [];
    Map<String, String> dataFriends = {
      "Isabelle": "isa.jpg",
      "Mickael": "mik.jpg",
      "Joe": "joe.jpg",
    };
    dataFriends.forEach((pseudo,image) {
      listFriends.add(Friend(pseudo, image));
    });
    return listFriends;
  }

  static List<Post> posts() {
    return [
      Post('2024-10-22', 'autumn.jpg', 'L\'automne, une de mes saisons préférés !', 12, 2),
      Post('2024-10-07', 'carnaval.jpg', 'Petit tour au Carnaval de Rio post-pandémie. Super Ambiance !', 0, 0),
      Post('2024-10-01', 'mountain.jpg','Segoia Mountain à San Francisco', 22, 15),
      Post('2024-09-15', 'run.jpg','Retour aux sources sur mon île paradisiaque', 125, 10),
    ];
  }
}

