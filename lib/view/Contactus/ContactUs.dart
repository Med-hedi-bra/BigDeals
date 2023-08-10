import 'package:big_deals/view/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingL = 30;
    double paddingT = 7;
    double widthh = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Container(
        margin: const EdgeInsets.only(top: 35) ,
        child: Center(
            child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  height: 480,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        width: widthh*0.7,
                        height: 70,
                        child: Text("إتصال بنا" , textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade900,
                        )),
                      ),
                      SizedBox(
                        width: widthh*0.7,
                        height: 390,
                        child: Center(
                            child: ListView(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: paddingL,
                                      right: paddingL,
                                      top: 0,
                                      bottom: paddingT),
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      hintText: "إسم",
                                      hintStyle: const TextStyle(
                                          fontFamily: "MontserratR", color: AppColors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide:
                                          const BorderSide(color: AppColors.grey)),
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
                                      hintText: "البريد الاكتروني",
                                      hintStyle: const TextStyle(
                                          fontFamily: "MontserratR", color: AppColors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide:
                                          const BorderSide(color: AppColors.grey)),
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

                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      hintText: "الرسالة",
                                      hintStyle: const TextStyle(
                                          fontFamily: "MontserratR", color: AppColors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide:
                                          const BorderSide(color: AppColors.grey)),
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
                                  padding:
                                  const EdgeInsets.only(right: 30, left: 150, top: 25 ),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      debugPrint(MediaQuery.of(context).size.toString());
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
                                      side: const BorderSide(
                                          color: AppColors.blue3, width: 1.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                )
            )),
      ),

    );
  }
}
