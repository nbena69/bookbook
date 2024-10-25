import 'package:flutter/material.dart';
import 'package:my_bookbook/data/data.dart';

class Header extends StatelessWidget {
  Header({super.key});

  final String userImage = Data.user().getImage;
  final String userImageAvatar = Data.user().getImageAvatar;
  final String userName = Data.user().getName;

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset('lib/assets/images/$userImage', fit: BoxFit.cover, height: 200, width: screenSize),
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: avatar(userImageAvatar),
        ),
        Container(
            margin: const EdgeInsets.only(top: 280),
            child: Column(
              children: [
                Text(userName, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "In Flutter, We trust !",
                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: buttonContainer(text: "Modifier le profil")),
                    buttonContainer(icon: Icons.border_color),
                  ],
                ),
                const Divider(thickness: 2),
              ],
            )),
      ],
    );
  }
}

Container avatar(String userImageAvatar) {
  return Container(
    width: 140,
    height: 140,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage('lib/assets/images/$userImageAvatar'),
        fit: BoxFit.cover,
      ),
      border: Border.all(color: Colors.white, width: 5),
    ),
  );
}

Container buttonContainer({IconData? icon, String? text}) {
  return Container(
    margin: const EdgeInsets.only(left: 10, right: 10),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue),
    height: 60,
    child: (icon == null)
        ? Center(child: Text(text ?? "", style: const TextStyle(color: Colors.white, fontSize: 18)))
        : Icon(icon, color: Colors.white),
  );
}