import 'package:flutter/material.dart';
import 'package:my_bookbook/utils/fonctions.dart';
import 'package:my_bookbook/data/data.dart';

class AboutUser extends StatelessWidget {
  AboutUser({super.key});

  final Map userInfos = Data.user().getInfos;

  @override
  Widget build(BuildContext context) {

    List<Widget> elements = [ // Elements du block
      Fonctions.afficherTitreSection('À propos de moi')
    ];

    for(MapEntry info in userInfos.entries) {
      elements.add(itemAboutMe(icon: info.key, text: info.value));
    }

    elements.add(const Divider(thickness: 2));

    return Column(
        children: elements
    );
  }
}

Container itemAboutMe({required IconData icon, required String text}) {
  return Container(
    padding: const EdgeInsets.only(left: 10),
    child: Row(
      children: [
        Icon(icon, color: Colors.black38),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    ),
  );
}