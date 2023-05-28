

import 'package:flutter/material.dart';

class EmojiBox extends StatelessWidget {
  final iconemo;
  const EmojiBox({super.key,required this.iconemo,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: 
        Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(15),
      child: Text(iconemo,style: TextStyle(fontSize: 29),),
    );
  }
}