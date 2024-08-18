
import 'package:flutter/material.dart';
import 'package:videochatapp/info.dart';
import 'package:videochatapp/widgets/my_message_card.dart';
import 'package:videochatapp/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if(messages[index]['isMe']==true){
          return MyMessageCard(
            message: messages[index]['text'].toString(),
             date: messages[index]['time'].toString(),
             );
        }
        return SenderMessageCard(message:messages[index]['text'].toString()
         , date: messages[index]['time'].toString());

      }  ,
    );
  }
}