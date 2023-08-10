import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'chat_item.dart';
import 'package:big_deals/view/Main/main_page.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  T getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

  final List<HexColor> colorPicker = [
    HexColor("88DDC4"),
    HexColor("B84234"),
    HexColor("D8DBD9")
  ];

  final List<String> photos = [
    "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWkRu3DOwMk627RLTZnRAq4Ft5n6cQjy_4Nw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR06huHjVRx9dNFJOJHHBAOCnf59NJOsCWx7SU7wjnF5-KtybRC03sfxpcuEv5G53VB_rU&usqp=CAU",
    "https://img.freepik.com/free-photo/half-profile-image-beautiful-young-woman-with-bob-hairdo-posing-gazing-with-eyes-full-reproach-suspicion-human-facial-expressions-emotions-reaction-feelings_343059-4660.jpg?w=2000"
  ];

  int unReadNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          Text(
            "المحادثات",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: Colors.indigo.shade900,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Menu(index: 5)));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.indigo.shade900,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(7, 40, 7, 10),
            child: Container(
              height: 66,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) =>
                      ChatItemPhoto(photo: getRandomElement(photos))),
            ),
          ),
          Divider(),
          for (var i = 0; i < 8; i++)
            Column(
              children: [
                ChatItem(
                  photo: getRandomElement(photos),
                  date: DateTime.now(),
                  userName: "أليس غلاسمن",
                  message: "مرحبًا ، لقد تركت كتابك في مكاني",
                  unRead: i,
                  color: getRandomElement(colorPicker),
                ),
                Divider(),
              ],
            ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBarApp(currentIndex: 4),
    );
  }
}
//   PreferredSizeWidget? appBarItem() => PreferredSize(
//       preferredSize: Size.fromHeight(MediaQuery.of(context).size.width * 0.52),
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
//               child: Text("APPLocalization",
//                   style: TextStyle(
//                       color: HexColor("7B408C"),
//                       fontSize: 35,
//                       fontWeight: FontWeight.w700)),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Padding(
//               padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
//               child: Text(
//                 "translation",
//                 style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black54,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(7, 10, 7, 10),
//               child: Container(
//                 height: 66,
//                 child: ListView.builder(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 6,
//                     itemBuilder: (context, index) =>
//                         ChatItemPhoto(photo: getRandomElement(photos))),
//               ),
//             ),
//           ],
//         ),
//       ));
// }

