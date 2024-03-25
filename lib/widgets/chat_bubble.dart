
import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/message.dart';

class ChatBubble extends StatelessWidget {
   ChatBubble({required this.message
  });
final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Text(message.message,
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
