import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/message_model.dart';
import '../../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe,bool isSameUser) {
    if (isMe) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          !isSameUser ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Text(
                message.time,
                style: const TextStyle(fontSize: 12, color: Colors.black45),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5)
                ]),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage(message.sender.imageUrl),
                ),
              ),
            ],
          )
          :Container(child: null),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.black54),
              ),
            ),
          ),
          !isSameUser ? Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5)
                ]),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage(widget.user.imageUrl),
                ),
              ),
              const SizedBox(width: 10),
               Text(
                message.time,
                style: const TextStyle(fontSize: 12, color: Colors.black45),
              )
            ],
          )
          :Container(child: null),
        ],
      );
    }
  }

  _sendMessageArea(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.photo),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
          ),
          const Expanded(
            child: TextField(
              //autofocus: true,
              decoration: InputDecoration(
                hintText: "????????????",
                border: InputBorder.none
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int? prevUserId;
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.user.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            const TextSpan(text: '\n'),
            widget.user.isOnline? const TextSpan(
                text: 'Online',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
                :const TextSpan(
                text: 'Offline',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
          ]),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(20),
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index){
              final Message message = messages[index];
              final bool isMe = message.sender.id==currentUser.id;
              final bool isSameUser = prevUserId == message.sender.id;
              prevUserId = message.sender.id;
              return _chatBubble(message, isMe,isSameUser);
            })
          ),
          _sendMessageArea()
        ],
      ),
    );
  }
}
