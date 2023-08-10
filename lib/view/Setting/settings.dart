import 'package:flutter/material.dart';
import 'package:big_deals/view/Setting/components/pages_widget.dart';
import '../Main/main_page.dart';
import 'package:tab_container/tab_container.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Settings> {
  bool status = true;
  bool status2 = false;
  String dropdownvalue = 'العربيّة';
  var items = [
    'العربيّة',
    'Français',
    'English',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          Text(
            "الإعدادات",
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
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  value: status,
                  activeColor: Colors.indigo.shade900,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "تفعيل الإشعارات",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.notifications_outlined,
                    color: Colors.indigo.shade900),
              ],
            ),
            Divider(
              height: 20,
              thickness: 0.1,
              color: Colors.indigo.shade900,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  activeColor: Colors.indigo.shade900,
                  value: status2,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      status2 = value;
                    });
                  },
                ),
                const SizedBox(
                  width: 120,
                ),
                Text(
                  "تفعيل الثيم اللّيلي",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900),
                ),
                const SizedBox(
                  width: 6.5,
                ),
                Icon(Icons.nights_stay_outlined, color: Colors.indigo.shade900),
              ],
            ),
            Divider(
              height: 20,
              thickness: 0.1,
              color: Colors.indigo.shade900,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton(
                  value: dropdownvalue,
                  icon: Icon(Icons.keyboard_arrow_down,
                      color: Colors.indigo.shade900),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Text(items,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo.shade900)));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownvalue = newValue.toString();
                    });
                  },
                ),
                const SizedBox(
                  width: 120,
                ),
                Text(
                  "إختيار اللّغة",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900),
                ),
                const SizedBox(
                  width: 0.5,
                ),
                Icon(Icons.language_outlined, color: Colors.indigo.shade900),
              ],
            ),
            Pages_Widget(),
          ],
        ),
      ),
    );
  }
}
