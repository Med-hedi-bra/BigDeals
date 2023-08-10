import 'package:big_deals/view/Home/components/Grparticle.dart';
import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Filter/Filter.dart';
import 'components/Mysquare.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _names1 = [
    "post1",
    "pos",
    "pos3",
    "pos2",
    "post1",
    "pos",
    "pos3",
    "pos2"
  ];
  final List _names2 = [
    "post1",
    "pos",
    "pos3",
    "pos2",
    "post1",
    "pos",
    "pos3",
    "pos2"
  ];

  final List ids = [
    1,2,3,4,5,6,7,8
  ];
  final List _imgs = ["assets/images/download.png"];
  var itemsNbr = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 90,
        leading: Row(
          children: const [
            SizedBox(
              width: 18,
            ),
            Icon(
              Icons.phone,
              color: AppColors.kPrimaryColor,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(Icons.add_alert, color: AppColors.kPrimaryColor)
          ],
        ),
        actions: [
          Image.asset(
            "assets/images/logo.png",
            width: 100,
            height: 100,
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 GestureDetector(
                   child:const Icon(Icons.filter_list_sharp , size: 35, color: AppColors.blue2,),
                   onTap: (){
                     debugPrint("line 84 ;; Home.dart");
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Filter()));
                   },
                 ),
                const SizedBox(width: 10,),
                SizedBox(
                  height: 45,
                  width: 335,
                  child: TextField(
                    textAlign: TextAlign.right,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        hintText: "ابحث",
                        suffixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 350,
              child: Scrollbar(

                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _names1.length,
                  itemBuilder: (context, index) {
                    return Mysquare(
                      name1: _names1[index],
                      name2: _names2[index],
                      img1: _imgs[0],
                      img2: _imgs[0],
                      id: ids[index],
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
height: itemsNbr*350 ,
              child: ListView.builder(
                  itemCount: itemsNbr,
                  // scrollDirection: Axis.vertical,
                  reverse: false,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const GrpArticle();
                  }),
            ),
          ),

        ],
      ),
    );
  }
}
