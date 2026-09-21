import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/account_options_model.dart';

class AccountOption extends StatelessWidget {
  final AccountOptionsModel myOptions;
  const AccountOption({super.key, required this.myOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  myOptions.myIcon,
                  SizedBox(width: 24.5.w),
                  Text(
                    myOptions.option,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                ],
              ),

              /////////////////
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Divider(),
      ],
    );
  }
}
