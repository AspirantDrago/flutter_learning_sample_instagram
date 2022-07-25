import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Account.dart';

class Likes {
  bool liked = false;
  int count = 0;
  List<Account> list_accounts = [];

  String countToString() {
    // TODO: implement toString
    return "Нравится: $count";
  }

  IconData getIconData() {
    if (liked)
      return Icons.favorite;
    return Icons.favorite_border;
  }

  void toggle() {
    if (liked) {
      liked = false;
      count--;
    } else {
      liked = true;
      count++;
    }
  }
}