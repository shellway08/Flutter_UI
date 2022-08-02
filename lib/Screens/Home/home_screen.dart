import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/message_model.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 8,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          title: const Text('Inbox'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          backgroundColor: Theme.of(context).primaryColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_){
                return ChatScreen(user: chat.sender);
              })),
              child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
               child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: chat.unread ? BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        //shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ])
                        : BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ]),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage:AssetImage(chat.sender.imageUrl),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                chat.sender.isOnline?
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).primaryColor
                                  ),
                                )
                                :Container(
                                  child: null,
                                )
                              ],
                            ),
                            Text(chat.time,
                                style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            chat.text,
                            style: const TextStyle(fontSize: 13, color: Colors.black54),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
          ),
            );
        })
    );
  }
}
