class Post {
  final String _stringDate;
  final String _image;
  final String _description;
  final int _likes;
  final int _comments;

  Post(this._stringDate, this._image, this._description, this._likes, this._comments);

  int get getComments => _comments;
  int get getLikes => _likes;
  String get getDescription => _description;
  String get getImage => _image;
  String get getStringDate => _stringDate;
}
