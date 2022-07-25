import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Photo/Photo.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:intl/intl.dart';

import '../Like/LikeContainer.dart';

class PhotoContainer extends Container {
  final Photo photo;
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');

  PhotoContainer(Photo this.photo);

  @override
  // TODO: implement child
  Widget? get child => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(photo.url),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LikeContainer(photo: photo),
                    Text(formatter.format(photo.publicDateTime))
                  ],
                ),
                Text(photo.likes.countToString()),
                Text(
                  photo.author.login,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
            child: Center(
              child: InkWell(
                  child: Text(
                    'Открыть',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  onTap: () => launchUrlString(photo.url)),
            ),
          ),
        ],
      );
}
