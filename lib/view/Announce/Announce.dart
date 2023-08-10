import 'dart:io';

import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Main/main_page.dart';

class Announce extends StatelessWidget {
  final int id;
  const Announce({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    Widget buildImage() {
      return CarouselSlider.builder(
          itemCount: 3,
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1,
            pageSnapping: false,
          ),
          itemBuilder: (context, itemIndex, pageIndex) {
            return Container(
              width: widthPage,
              color: Colors.grey,
              foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/car.png"),
                      fit: BoxFit.fill)),
            );
          });
    }

    Widget buildSlider() {
      return Stack(
        children: [
          buildImage(),
          Positioned(
            left: 18,
            top: 40,
            child: GestureDetector(
              child: const Icon(Icons.arrow_back),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Menu(index: 5)));
              },
            ),
          )
        ],
      );
    }

    return Scaffold(
        body: Column(
      children: [
        buildSlider(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.7,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint("line 56 Announce.dart");
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: AppColors.blue3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "دردشة",
                        style: TextStyle(
                            color: AppColors.blue3,
                            fontFamily: "Monserrat",
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: AppColors.blue3,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.7,
                height: 50,
                child: TextButton(
                    style:
                        TextButton.styleFrom(backgroundColor: AppColors.blue3),
                    onPressed: () {
                      //launchUrl("tel://22222");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "222222",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.phone,
                          color: AppColors.white,
                        )
                      ],
                    )),
              )
            ],
          ),
        )
      ],
    ));
  }
}
