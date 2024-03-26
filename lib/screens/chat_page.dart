import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat/constant.dart';

import '../models/message.dart';
import '../widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id = 'ChatPage';
  final _controller = ScrollController();

  CollectionReference messages =
      FirebaseFirestore.instance.collection(KMessagesCollection);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
   var email = ModalRoute.of(context)!.settings.arguments ;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(KCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: KprimaryColor,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Klogo,
                    height: 60,
                  ),
                  const Text('Scholar Chat'),
                ],
              ),
              automaticallyImplyLeading: false,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      reverse: true,
                      controller: _controller,
                      itemCount: messagesList.length,
                      itemBuilder: (context, index)
                      {
                        return messagesList[index].id == email
                            ?SendChatBubble(
                             message: messagesList[index],)
                            :ReciveChatBubble(
                            message: messagesList[index]);
                      }
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages
                          .add({KMessage: data, KCreatedAt: DateTime.now(),'id': email });
                      controller.clear();
                      _controller.animateTo(0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn);
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(color: KprimaryColor)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send, color: KprimaryColor),
                      ),
                      hintText: 'Send Message',
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return const Text('loading');
        }
      },
    );
  }
}
