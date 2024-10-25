import 'package:flutter/material.dart';

class Fonctions {
  static calculerTime() {}

  static Container afficherTitreSection(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
