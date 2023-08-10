import 'package:flutter/material.dart';
import 'package:big_deals/view/Announce/addAnnounce.dart';
import'package:big_deals/view/Category/category.dart';
import 'package:big_deals/view/Setting/settings.dart';
import 'package:big_deals/view/profile/profile_page.dart';
import 'package:big_deals/view/Home/Home.dart';
import '../Chat/chat.dart';
import '../Chat/chat1.dart';





class Menu extends StatefulWidget {
  final int index;
  const Menu({Key? key , required this.index}) : super(key: key);


  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var currentIndex = 5;
  List pages = [const Settings(), const Category(), const AddAnnounce(),  Chat(),  Profile() , const  Home()];

  @override
  Widget build(BuildContext context) {
    // currentIndex = widget.index;
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "اعدادت"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.file_open,
              ),
              label: "التصنيفات"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "أضف"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message_rounded,
              ),
              label: "دردشة"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "الشخصي"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "الرئيسية")
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 35,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(76, 104, 153, 1),
        unselectedItemColor: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
