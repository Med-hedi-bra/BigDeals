import 'dart:async';
import 'dart:io';

import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../Main/main_page.dart';

class AddAnnounce extends StatefulWidget {
  const AddAnnounce({Key? key}) : super(key: key);

  @override
  _AddAnnounceState createState() => _AddAnnounceState();
}



class _AddAnnounceState extends State<AddAnnounce> {
  String imagePath1 = "assets/images/download.png";
  String imagePath2 = "assets/images/download.png";
  String imagePath3 = "assets/images/download.png";
  String downloadPath = "assets/images/download.png";
  double imageWidth = 100;
  double imageHeight = 100;
  int image_num = 0; //pour savoir quel image en va telecharger parmi les trois image
  Widget buildImage1() {
      if (imagePath1 == downloadPath) {
        return Image.asset(
          width: imageWidth,
          height: imageHeight,
          imagePath1,
          fit: BoxFit.cover,
        );
      } else {
        return Image.file(
          width: imageWidth,
          height: imageHeight,
          File(imagePath1),
          fit: BoxFit.cover,
        );
      }
  }

  Widget buildImage2() {
    if (imagePath2 == downloadPath) {
      return Image.asset(
        width: imageWidth,
        height: imageHeight,
        imagePath2,
        fit: BoxFit.cover,
      );
    } else {
      return Image.file(
        width: imageWidth,
        height: imageHeight,
        File(imagePath2),
        fit: BoxFit.cover,
      );
    }
  }


  Widget buildImage3() {
    if (imagePath3 == downloadPath) {
      return Image.asset(
        width: imageWidth,
        height: imageHeight,
        imagePath3,
        fit: BoxFit.cover,
      );
    } else {
      return Image.file(
        width: imageWidth,
        height: imageHeight,
        File(imagePath3),
        fit: BoxFit.cover,
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    double paddingL = 30;
    double paddingT = 12;

    Future pickImage() async {
      try {
        final image = await ImagePicker().pickImage(
            source: ImageSource.gallery, maxWidth: 80, maxHeight: 80);
        if (image != null) {
          setState(() {
            if (image_num == 1) {
              imagePath1 = image.path;
            }
            if (image_num == 2) {
              imagePath2 = image.path;
            }
            if (image_num == 3) {
              imagePath3 = image.path;
            }
          });
        }

        return null;
      } on PlatformException catch (e) {
        debugPrint(" error ::: $e");
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Transform(
            transform: Matrix4.translationValues(125, 0, 0),
            child:  Text("إضافة إعلان",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo.shade900,
                )),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context , MaterialPageRoute(builder: (context) => Menu(index:5)));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.indigo.shade900,
          ),
          iconTheme: const IconThemeData(color: AppColors.blue1),
          centerTitle: false,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            title: Transform(
              transform: Matrix4.translationValues(45, 21, 0),
              child: const Text(
                "الصور الواضحة تساعدك في عملية البيع",
                style: TextStyle(
                    color: AppColors.blue2,
                    fontSize: 17,
                    fontFamily: "MontserratR"),
              ),
            ),
          ),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: paddingL,
                    right: paddingL,
                    top: paddingT,
                    bottom: paddingT),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "سيارات للبيع شفروليه",
                    hintStyle: const TextStyle(
                        fontFamily: "MontserratR", color: AppColors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.grey)),
                    fillColor: AppColors.greyOb,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.weekend,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: paddingL,
                    right: paddingL,
                    top: paddingT,
                    bottom: paddingT),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "عنوان الاعلان",
                    hintStyle: const TextStyle(
                        fontFamily: "MontserratR", color: AppColors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.grey)),
                    fillColor: AppColors.greyOb,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.weekend,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: paddingL,
                    right: paddingL,
                    top: paddingT,
                    bottom: paddingT),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "سعر الإعلان",
                    hintStyle: const TextStyle(
                        fontFamily: "MontserratR", color: AppColors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.grey)),
                    fillColor: AppColors.greyOb,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.money,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: paddingL,
                    right: paddingL,
                    top: paddingT,
                    bottom: paddingT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: GestureDetector(
                          onTap: () {
                            image_num = 1;
                            pickImage();
                          },
                          child: buildImage1(),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: GestureDetector(
                          onTap: () {
                            image_num = 2;
                            pickImage();
                          },
                          child: buildImage2(),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: GestureDetector(
                          onTap: () {
                            image_num = 3;
                            pickImage();
                          },
                          child: buildImage3(),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: paddingL,
                    right: paddingL,
                    top: paddingT,
                    bottom: paddingT),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: "إسم المدينة",
                    hintStyle: const TextStyle(
                        fontFamily: "MontserratR", color: AppColors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: AppColors.grey)),
                    fillColor: AppColors.greyOb,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.location_on,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 170 , top: 30),
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint("hello :: line 285 AddAnnounce ");
                  },
                  child: const Text(
                    "متابعة",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.blue3,
                        fontFamily: "MontserratR",
                        fontSize: 20),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.blue3, width: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
