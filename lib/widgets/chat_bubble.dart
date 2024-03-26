
import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/message.dart';

class SendChatBubble extends StatelessWidget {
   const SendChatBubble({super.key, required this.message
  });
final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: const BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Text(message.message,
            style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
class ReciveChatBubble extends StatelessWidget {
  const ReciveChatBubble({super.key, required this.message
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: const BoxDecoration(
            color: Color(0xff006D84),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
        child: Text(message.message,
            style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
