import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learncourse/models/chat_message.dart';

import 'chat_detail.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Row(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: Align(
                  alignment: (widget.chatMessage.type == MessageType.Receiver
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (widget.chatMessage.type == MessageType.Receiver
                          ? Color(0xffF3F3F3)
                          : Colors.blue.shade600),
                    ),
                    child: Container(
                        height: 20,
                        width: 20,
                        child: widget.chatMessage.type == MessageType.Receiver
                            ? CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/icons-boy.png",
                                ),
                                maxRadius: 20,
                              )
                            : CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/icons-boy.png",
                                ),
                                maxRadius: 20,
                              )),
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 0),
                  child: Align(
                    alignment: (widget.chatMessage.type == MessageType.Receiver
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (widget.chatMessage.type == MessageType.Receiver
                            ? Color(0xffF3F3F3)
                            : Colors.blue.shade600),
                      ),
                      padding: EdgeInsets.only(
                          top: 16, right: 16, left: 05, bottom: 16),
                      child: Text(widget.chatMessage.message),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                  child: Align(
                    alignment: (widget.chatMessage.type == MessageType.Receiver
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.5)),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 20,
                        width: 50,
                        child: Text('4:00am'),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
