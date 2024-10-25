import 'package:flutter/material.dart';
import 'post.dart';
import 'friend.dart';

class User{
  User(this._name, this._imageAvatar, this._image, this._infos, this._friends, this._posts);
  final String _name;
  final String _imageAvatar;
  final String _image;
  final Map<IconData, String> _infos;
  final List<Friend> _friends;
  final List<Post> _posts;

  // Getters
  String get getName => _name;
  String get getImageAvatar => _imageAvatar;
  String get getImage => _image;
  Map<IconData, String> get getInfos => _infos;
  List<Friend> get getFriends => _friends;
  List<Post> get getPosts => _posts;

}