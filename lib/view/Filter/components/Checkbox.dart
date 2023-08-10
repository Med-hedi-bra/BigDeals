import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
class CheckBox extends StatefulWidget {
  bool checked ;
  String label;
   CheckBox({Key? key , required this.label , required this.checked}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.label , style: TextStyle(fontFamily: "Tajawal" , fontWeight: FontWeight.w700 , fontSize: 17),),
          Checkbox(
            value: widget.checked,
            onChanged: (newValue){
              debugPrint("line 183 Filter.dart ");
              setState(() {
                widget.checked = newValue!;
              });
            },
            activeColor: AppColors.blue2,
            tristate: false,
          )
        ],
      ) ,
    );
  }
}
