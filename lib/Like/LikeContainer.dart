import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Photo/Photo.dart';

class LikeContainer extends StatefulWidget {
  const LikeContainer({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final Photo photo;

  @override
  State<LikeContainer> createState() => _LikeContainerState();
}

class _LikeContainerState extends State<LikeContainer> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.photo.likes.getIconData(),
        color: widget.photo.likes.liked ? Colors.red : null,
      ),
      onPressed: () => setState(() {
        widget.photo.likes.toggle();
      }),
    );
  }
}