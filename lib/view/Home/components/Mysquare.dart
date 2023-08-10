import 'package:flutter/material.dart';
import 'package:big_deals/view/Announce/Announce.dart';

class Mysquare extends StatelessWidget {
  final String name1, name2, img1, img2;
  final int id;
  Mysquare({
    Key? key,
    required this.id,
    required this.name1,
    required this.name2,
    required this.img1,
    required this.img2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  width: 150,
                  height: 100,
                  foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/teslaa.png"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name2)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  width: 150,
                  height: 100,
                  foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/teslaa.png"),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
