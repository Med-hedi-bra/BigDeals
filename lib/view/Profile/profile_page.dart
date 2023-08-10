import 'package:flutter/material.dart';
import 'package:big_deals/view/profile/components/numbers_widgets.dart';
import 'package:big_deals/view/profile/components/pages_widget.dart';
import 'package:big_deals/view/profile/components/profile_widget.dart';
import 'package:big_deals/model/user.dart';
import 'package:big_deals/view/profile/components/user_info.dart';
import 'package:big_deals/view/profile/components/appbar_widget.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    const  user = User_info.myUser;
    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Profile_Widget(
              img: user.img,
            ),
            const SizedBox(height: 10),
            buildName(user),
            Numbers_Widget(),
            const SizedBox(height: 25),
            Pages_Widget(),
          ],
        ));
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.indigo.shade900),
          )
        ],
      );
}
