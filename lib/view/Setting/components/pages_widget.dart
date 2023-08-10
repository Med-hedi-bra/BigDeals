import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../../Contactus/ContactUs.dart';

class Pages_Widget extends StatelessWidget {
  bool status = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          buildDivider(),
          buildButton3(context),
          buildDivider(),
          buildButton4(context),
          buildDivider(),
          buildButton5(context),
          buildDivider(),
          buildButton6(context),
          buildDivider(),
          buildButton7(context),
          buildDivider(),
        ],
      );

  Widget buildDivider() => Container(
        height: 20,
        child: Divider(
          color: Colors.indigo.shade900,
          thickness: 0.1,
        ),
      );

  Widget buildButton3(BuildContext context) => MaterialButton(
      padding: const EdgeInsets.symmetric(),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 0,
          ),
          Text(
            "سياسة التطبيق الخصوصيّة",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(Icons.wysiwyg_outlined, color: Colors.indigo.shade900),
        ],
      ));

  Widget buildButton4(BuildContext context) => MaterialButton(
      padding: const EdgeInsets.symmetric(),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 150,
          ),
          Text(
            "شارك التطبيق",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(Icons.share_outlined, color: Colors.indigo.shade900),
        ],
      ));

  Widget buildButton5(BuildContext context) => MaterialButton(
      padding: const EdgeInsets.symmetric(),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ContactUs();
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 150,
          ),
          Text(
            "إتصل بنا",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(Icons.mail_outline, color: Colors.indigo.shade900),
        ],
      ));

  Widget buildButton6(BuildContext context) => MaterialButton(
      padding: const EdgeInsets.symmetric(),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 150,
          ),
          Text(
            "المساعدة",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(Icons.support_outlined, color: Colors.indigo.shade900),
        ],
      ));

  Widget buildButton7(BuildContext context) => MaterialButton(
      padding: const EdgeInsets.symmetric(),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 150,
          ),
          Text(
            "حول التطبيق",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(Icons.info_outline, color: Colors.indigo.shade900),
        ],
      ));
}
