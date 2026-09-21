import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CheckBox extends StatefulWidget {
  final String option;
  const CheckBox({super.key, required this.option});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

int myColor = 0xff181725;

// myColor = 0xff53B175;  ////green
class _CheckBoxState extends State<CheckBox> {
  bool? isRound = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundCheckBox(
          isChecked: isRound,
          onTap: (selected) {
            setState(() {
              isRound = selected;
              if (selected == true) {
                myColor = 0xff53B175; ///// black
              } else {
                myColor = 0xff181725;

                ///green
              }
            });
          },
          size: 25.sp,
        ),
        SizedBox(width: 17.w),
        Text(
          widget.option,
          style: TextStyle(fontSize: 16.sp, color: Color(myColor)),
        ),
      ],
    );
  }
}
