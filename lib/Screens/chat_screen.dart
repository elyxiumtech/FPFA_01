import 'package:flutter/material.dart';
import 'package:learncourse/widgets/chat_detail.dart';
import 'package:learncourse/widgets/chat_detail_appbar.dart';

class ChatScreen extends StatelessWidget {
  //const ChatScreen({ Key? key }) : sup//er(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ChatDetailPageAppBar(),
            SingleChildScrollView(child: ChatDetailPage())
          ],
        )
      ],
    );
  }
}
