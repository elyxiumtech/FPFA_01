import 'package:flutter/material.dart';
import 'package:learncourse/widgets/chat_detail.dart';

class ChatMessage {
  String message;
  MessageType type;
  ChatMessage({@required required this.message, @required required this.type});
}
