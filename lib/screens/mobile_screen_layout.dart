import 'package:flutter/material.dart';
import 'package:videochatapp/colors.dart';
import 'package:videochatapp/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
       child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            'Lets Talk',
            style:TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ) ,
          ),
          centerTitle: false,
          actions: [
            IconButton(onPressed:(){} , icon:const Icon(Icons.search,color: Color.fromRGBO(255, 255, 255, 1),),),
            IconButton(onPressed:(){} , icon:const Icon(Icons.more_vert,color:Color.fromRGBO(255, 255, 255, 1),),),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor:Color.fromRGBO(255, 255, 255, 1) ,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [

            Tab(text: 'CHATS',),
            Tab(text: 'STORIES',),
            Tab(text: 'CALL LOG',),
          ]),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
onPressed: (){},
backgroundColor: Colors.black,
child: const Icon(Icons.comment,color: Color.fromARGB(255, 255, 255, 255),
),

        ),
       )
      );
  }
}