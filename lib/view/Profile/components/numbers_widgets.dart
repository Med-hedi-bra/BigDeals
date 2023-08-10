import 'package:flutter/material.dart';

class Numbers_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '14', 'إعلان'),
          buildDivider(),
          buildButton(context, '32', 'متابعيني'),
          buildDivider(),
          buildButton(context, '26', 'متابعهم'),
        ],
      );

  Widget buildDivider() => Container(
        height: 30,
        child: VerticalDivider(thickness: 1, color: Colors.blue.shade400),
      );

  Widget buildButton(BuildContext context, String text, String value) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 8),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.indigo.shade400),
            ),
            SizedBox(height: 4),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.indigo.shade300),
            ),
          ],
        ),
      );
}
