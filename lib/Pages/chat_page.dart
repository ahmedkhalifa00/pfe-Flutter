import 'package:flutter/material.dart';

class ChatMessage {
  String messageContent;
  String messageType;

  ChatMessage({required this.messageContent, required this.messageType});
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey kid, I am doing fine. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  TextEditingController textController = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: Color.fromARGB(255, 33, 95, 177),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return buildSingleMessage(index);
              },
            ),
          ),
          buildInputArea(),
        ],
      ),
    );
  }

  Widget buildSingleMessage(int index) {
    return Container(
      alignment: messages[index].messageType == "sender"
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(14.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: messages[index].messageType == "sender"
              ? Color.fromARGB(255, 45, 99, 161)
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          messages[index].messageContent,
          style: TextStyle(
            color: messages[index].messageType == "sender"
                ? Colors.white
                : Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget buildInputArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Color.fromARGB(255, 71, 82, 231)),
            onPressed: sendMessage,
          ),
        ],
      ),
    );
  }

  void sendMessage() {
    if (textController.text.isNotEmpty) {
      setState(() {
        messages.add(ChatMessage(
          messageContent: textController.text,
          messageType: "sender",
        ));
      });
      textController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + 70,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }
}
