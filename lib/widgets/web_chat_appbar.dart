
import 'package:flutter/material.dart';
import 'package:videochatapp/colors.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

 @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10.0),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  '',
                ),
                radius: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              const Text(
                'Shrey',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color:Color.fromRGBO(250, 250, 249, 1) ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color:Color.fromRGBO(255, 255, 255, 1) ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}