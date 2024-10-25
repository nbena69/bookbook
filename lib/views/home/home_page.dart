import 'package:flutter/material.dart';
import 'package:my_bookbook/widgets/about_section.dart';
import 'package:my_bookbook/widgets/header_section.dart';
import 'package:my_bookbook/widgets/friends_section.dart';
import 'package:my_bookbook/widgets/posts_section.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

 @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookbook'),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            AboutUser(),
            Friends(),
            Posts(),
          ],
        ),
      ),
    );
  }
} // BasicsPage
