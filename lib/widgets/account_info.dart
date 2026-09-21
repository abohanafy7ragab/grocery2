import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Container(
            width: 64.4.w,
            height: 64.4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r),
              image: DecorationImage(
                image: Image.asset("assets/Mahmoud.jpg").image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20.w),
          ////////////////////////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mahmoud ragab", style: TextStyle(fontSize: 20.sp)),
              Text(
                "Imshuvo97@gmail.com",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight(300),
                  color: Color(0xff7C7C7C),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
