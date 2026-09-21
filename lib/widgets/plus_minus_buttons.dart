import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlusMinusButtons extends StatelessWidget {
  const PlusMinusButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 45.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.remove),
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.r),
              border: Border.all(width: .5.w, color: Color(0xffE2E2E2)),
            ),
            child: Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight(600)),
              ),
            ),
          ),
          Icon(Icons.add, color: Color(0xff53B175)),
        ],
      ),
    );
  }
}
