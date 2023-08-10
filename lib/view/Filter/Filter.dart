import 'package:big_deals/view/colors.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import '../Main/main_page.dart';
import './components/Checkbox.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isVisible1 = false,
      isVisible2 = false,
      isVisible3 = false,
      isVisible4 = false;
  int turns1 = 3, turns2 = 3, turns3 = 3, turns4 = 3;
  var selectedRange = RangeValues(0, 100);
  bool checked1 = false, checked2 = false;
  String? country , city , state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          Text(
            "فلتر",
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
      body: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8, top: 15),
        child:
            ListView(
                 children: [
          SizedBox(
            height: 60,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: GestureDetector(
                  onTap: () {
                    debugPrint("line 123 Filter.dart");
                    setState(() {
                      isVisible1 = !isVisible1;
                      turns1 = isVisible1 ? 1 : 3;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: turns1,
                        child: const Icon(Icons.arrow_back_rounded),
                      ),
                      const Text(
                        "السعر",
                        style: TextStyle(
                            fontFamily: "Tajawal",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: isVisible1,
            child: SizedBox(
              height: 150,
              width: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("الأقل",
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${selectedRange.start}',
                        style: const TextStyle(
                            fontFamily: 'Tajawal', fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 270,
                    child: RangeSlider(
                      values: selectedRange,
                      onChanged: (RangeValues newRange) {
                        setState(() {
                          selectedRange = newRange;
                        });
                      },
                      min: 0,
                      max: 100,
                      labels: RangeLabels(
                          '${selectedRange.start}', '${selectedRange.end}'),
                      divisions: 10,
                      activeColor: AppColors.blue3,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("الاقصى",
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${selectedRange.end}',
                        style: const TextStyle(
                            fontFamily: 'Tajawal', fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: GestureDetector(
                  onTap: () {
                    debugPrint("line 123 Filter.dart");
                    setState(() {
                      isVisible2 = !isVisible2;
                      turns2 = isVisible2 ? 1 : 3;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: turns2,
                        child: const Icon(Icons.arrow_back_rounded),
                      ),
                      const Text(
                        "العلامة التجارية",
                        style: TextStyle(
                            fontFamily: "Tajawal",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
              visible: isVisible2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CheckBox(label: "titre", checked: checked1),
                  CheckBox(label: "titre1", checked: checked2)
                ],
              )),
          SizedBox(
            height: 60,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: GestureDetector(
                  onTap: () {
                    debugPrint("line 123 Filter.dart");
                    setState(() {
                      isVisible3 = !isVisible3;
                      turns3 = isVisible3 ? 1 : 3;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: turns3,
                        child: const Icon(Icons.arrow_back_rounded),
                      ),
                      const Text(
                        "المكان ",
                        style: TextStyle(
                            fontFamily: "Tajawal",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
              visible: isVisible3,
              child: SizedBox(
                height: 200,
                child: SelectState(
                  onCountryChanged: (newCountry){
                    setState(() {
                      country = newCountry;
                    });
                  },
                  onCityChanged: (newCity){
                    setState(() {
                      city = newCity;
                    });
                  },
                  onStateChanged: (newState){
                    setState(() {
                      state = newState;
                    });
                  },
                ),
              )),
          SizedBox(
            height: 60,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: GestureDetector(
                  onTap: () {
                    debugPrint("line 123 Filter.dart");
                    setState(() {
                      isVisible4 = !isVisible4;
                      turns4 = isVisible4 ? 1 : 3;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: turns4,
                        child: const Icon(Icons.arrow_back_rounded),
                      ),
                      const Text(
                        "عمر المنتج",
                        style: TextStyle(
                            fontFamily: "Tajawal",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
              visible: isVisible4,
              child: Container(
                margin: const EdgeInsets.only(right: 140 , left: 140,top: 20),
                child:TextField(
                  cursorHeight: 20,
                  textAlign: TextAlign.center,
                  onChanged: (input){
                      debugPrint(input);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Ex : 5",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:   BorderSide(width: 9 , color: Colors.red)

                    )
                  ),
                ),
              )),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only( bottom:45.0),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: AppColors.blue3 , ),
                onPressed: () {
                  debugPrint("line 287 filter.dart");
                },
                child: const Text("ابحث " , style:  TextStyle(color: AppColors.white , fontFamily: 'Tajawal' , fontWeight: FontWeight.w700 , fontSize: 25),)),
          ),
        ]),
      ),
    );
  }
}
