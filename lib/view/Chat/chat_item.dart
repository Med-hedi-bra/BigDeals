
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'chat_screen.dart';
import 'package:intl/intl.dart';
// import 'package:snippet_coder_utils/hex_color.dart';
// import 'package:testing/view/chat_screen.dart';

class ChatItem extends StatelessWidget {
  ChatItem(
      {required this.date,
      this.unRead,
      required this.message,
      required this.userName,
      required this.photo,
      required this.color,
      Key? key})
      : super(key: key);

  final String userName;
  final String message;
  final DateTime date;
  final int? unRead;
  final String photo;
  final HexColor color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => ChatScreen(
                  photo: photo,
                  userName: userName,
                  desc: "25 سنة من نيويورك"))),
      contentPadding: EdgeInsets.fromLTRB(25, 5, 25, 5),
      title: Text(userName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
      subtitle: Text(
        message,
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      trailing: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Text(
            DateFormat.Hm().format(date),
            style: TextStyle(color: Colors.black38, fontSize: 13),
          ),
          const SizedBox(
            height: 9,
          ),
          if (unRead != null && unRead != 0)
            Container(
              height: 20,
              width: 20,
              child: Center(
                  child: Text(unRead!.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12))),
              decoration: BoxDecoration(
                color: HexColor("2FC361"),
                shape: BoxShape.circle,
              ),
            )
        ],
      ),
      leading: ChatItemPhoto(
        photo: photo,
        color: color,
      ),
    );
  }
}

class ChatItemPhoto extends StatelessWidget {
  final String photo;
  final HexColor? color;
  const ChatItemPhoto({this.color, required this.photo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HexColor defaultColor = HexColor("88DDC4");
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: color != null ? color! : defaultColor,
              width: 2.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(13))),
        child: Padding(
          padding: EdgeInsets.all(1.5),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              child: Image(
        
                image: NetworkImage(photo),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
