import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'chat_messages.dart';
// import 'package:snippet_coder_utils/hex_color.dart';
// import 'package:testing/view/custom_used_widgets/bottom_navigation_bar.dart.dart';

class ChatScreen extends StatefulWidget {
  final String photo;
  final String userName;
  final String desc;

  ChatScreen(
      {required this.photo,
      Key? key,
      required this.userName,
      required this.desc})
      : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    List reverseList = List.from(ChatMessage.messages.reversed);
    return Scaffold(
      appBar: appBarItem(context),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListView(
                reverse: true,
                controller: _scrollController,
                children: [
                  for (ChatMessage chatMessage in reverseList)
                    if (!chatMessage.isSender)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: _YourMessage(message: chatMessage.message),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: _MyMessage(
                          message: chatMessage.message,
                        ),
                      ),
                ],
              ),
            ),
          ),
          _WriteMessage()
        ],
      ),
      // bottomNavigationBar: BottomNavigationBarApp(currentIndex: 4),
    );
  }

  PreferredSizeWidget? appBarItem(BuildContext context) => PreferredSize(
        preferredSize: Size.fromHeight(210),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                          image: AssetImage("assets/images/logo.png"),
                          width: 50),
                      const SizedBox(
                        width: 58,
                      ),
                      Container(
                        height: 42,
                        width: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: HexColor("FFD6E3"),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.exit_to_app_sharp,
                            color: HexColor("C53D69"),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ]),
                const SizedBox(height: 40),
                ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: IconButton(
                        onPressed: () {
                          print("ready to block");
                        },
                        icon: Icon(Icons.block_flipped),
                        color: HexColor('8C30C1'),
                        iconSize: 20,
                      ),
                    ),
                    title: Row(
                      children: [
                        Stack(children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 33,
                              backgroundImage: NetworkImage(widget.photo),
                            ),
                          ),
                          Positioned(
                            top: 52,
                            right: 15,
                            height: 14,
                            width: 14,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: HexColor("61C831"),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(widget.userName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 20)),
                            Text(
                              widget.desc,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      );

  Widget _WriteMessage() {
    final TextEditingController msgController = TextEditingController();

    return Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40, 30, 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey[100]!.withOpacity(0.7),
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18, top: 18),
            child: TextField(
              onTap: () => _scrollController.animateTo(0,
                  duration: Duration(microseconds: 300), curve: Curves.easeOut),
              controller: msgController,
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  addMessage(value);
                }
                msgController.clear();
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black38),
                  hintText: "نص الرسالة هنا للإرسال"),
            ),
          ),
        ));
  }

  addMessage(String value) {
    ChatMessage.messages.add(ChatMessage(message: value, isSender: true));
  }
}

class _YourMessage extends StatelessWidget {
  final String message;
  const _YourMessage({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 245),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.elliptical(50, 0))),
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Text(
              message,
              style: TextStyle(color: Colors.black87, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyMessage extends StatelessWidget {
  final String message;
  const _MyMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 245),
          child: Container(
            decoration: BoxDecoration(
                color: HexColor("8D30BF"),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.elliptical(50, 0))),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Text(
                message,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          height: 20,
          width: 20,
          image: AssetImage("assets/images/teslaa.png"),
        )
      ],
    );
  }
}
