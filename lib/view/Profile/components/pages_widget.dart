import 'package:flutter/material.dart';

class Pages_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildButton(context, 'قائمة إعلانـاتي'),
          buildDivider(),
          buildButton(context, 'آخر الإعلانات مشاهدة'),
          buildDivider(),
          buildButton(context, 'إعلانـات المتابعين'),
          buildDivider(),
          buildButton(context, 'متابعهم'),
          buildDivider(),
          buildButton(context, 'متابعيني'),
          buildDivider(),
          buildButton(context, 'تعديل البروفـايل'),
          buildDivider(),
          buildButton(context, 'قائمة المحظورين'),
          buildDivider(),
        ],
      );

  Widget buildDivider() => Container(
        height: 24,
        child: Divider(
            color: Colors.indigo.shade100,
            thickness: 0.5,
            indent: 0,
            endIndent: 0),
      );

  Widget buildButton(BuildContext context, String text) => 
  MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 2 ),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Align(
        alignment: Alignment.topRight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            
            SizedBox(height:5),
            Text(
              text,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo.shade900,
                  fontSize: 18),
            ),
          ],
        ),
      ));
}
