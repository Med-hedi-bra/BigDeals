import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
            child: ListView(children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search_outlined,
                      color: Colors.indigo.shade900, size: 36),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    "التصنيفات",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                ],
              ),
              Text(
                "إختر التصنيف المهم لك و الّذي تريد تصفحه",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.indigo.shade300,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                " تصنيفات تهمّك",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(76, 104, 153, 1),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                height: 23,
                thickness: 0.7,
                color: Color.fromRGBO(0, 132, 255, 1),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.flutter_dash_outlined,
                      color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                  SizedBox(
                    width: 43,
                  ),
                  Icon(Icons.campaign_outlined,
                      color: Color.fromRGBO(76, 104, 153, 1), size: 45),
                  SizedBox(
                    width: 43,
                  ),
                  Icon(Icons.sim_card_outlined,
                      color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                  SizedBox(
                    width: 43,
                  ),
                  Icon(Icons.business_center_outlined,
                      color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                ],
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                height: 34,
                thickness: 0.7,
                color: Color.fromRGBO(0, 132, 255, 1),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " السيّـارات",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(76, 104, 153, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.construction_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("خدمات السيّارات",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 30,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.toys_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("قطع غيار",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 30,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.car_rental_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("تأجير سيّارات",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 27,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.directions_car_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("سيّارات للبيع",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 210,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.airline_seat_recline_normal_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("تعليم قيادة",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 23,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.car_repair_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("سيّارات سكراب",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                " الهواتف و التابلت",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(76, 104, 153, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 37,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.electrical_services_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("اكسسوارات",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 44,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.sim_card_download_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("أرقام",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 50,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.tablet_android_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("تابلت",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 53,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.phone_android_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("هواتف",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 213,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.watch_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("ساعات ذكيّة",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                  SizedBox(
                    width: 25,
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Icon(Icons.phonelink_setup_outlined,
                        color: Color.fromRGBO(76, 104, 153, 1), size: 40),
                    Text("تصليح هواتف",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(76, 104, 153, 1),
                        ))
                  ]),
                ],
              ),
            ])));
  }
}
