import 'package:flutter_tutorial/Account.dart';
import 'package:flutter_tutorial/Like/Likes.dart';

class Photo {
  late String url;
  Likes likes = Likes();
  DateTime publicDateTime = DateTime.now();
  late Account author;

  Photo(Account author, String url, {int countLikes = 0, bool liked = false}) {
    this.author = author;
    this.url = url;
    likes.count = countLikes;
    likes.liked = liked;
  }
}
