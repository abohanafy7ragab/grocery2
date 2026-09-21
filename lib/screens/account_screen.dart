import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/account_options_model.dart';
import 'package:grocery/widgets/account_info.dart';
import 'package:grocery/widgets/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 21.h),
          AccountInfo(),
          SizedBox(height: 30.h),
          Divider(),
          AccountOption(myOptions: myOptions[0]),
          AccountOption(myOptions: myOptions[1]),
          AccountOption(myOptions: myOptions[2]),
          AccountOption(myOptions: myOptions[3]),
          AccountOption(myOptions: myOptions[4]),
          AccountOption(myOptions: myOptions[5]),
          AccountOption(myOptions: myOptions[6]),
          SizedBox(height: 52.h),

          ////////  log out botton  /////////
          Container(
            height: 67,
            padding: EdgeInsets.symmetric(horizontal: 25.20.w),
            margin: EdgeInsets.symmetric(horizontal: 24.58.w),
            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.circular(19.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.logout, size: 18.sp, color: Color(0xff53B175)),
                Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight(600),
                    color: Color(0xff53B175),
                  ),
                ),
                Container(),
              ],
            ),
          ),

          SizedBox(height: 24.5.h),
        ],
      ),
    );
  }
}

List<AccountOptionsModel> myOptions = [
  AccountOptionsModel(myIcon: Icon(Icons.breakfast_dining), option: "order"),
  AccountOptionsModel(myIcon: Icon(Icons.card_giftcard), option: "My details"),
  AccountOptionsModel(
    myIcon: Icon(Icons.breakfast_dining),
    option: "Delivery Address",
  ),
  AccountOptionsModel(
    myIcon: Icon(Icons.breakfast_dining),
    option: "Payment Methods",
  ),
  AccountOptionsModel(
    myIcon: Icon(Icons.breakfast_dining),
    option: "Promo Cord",
  ),
  AccountOptionsModel(
    myIcon: Icon(Icons.breakfast_dining),
    option: "Notifecations",
  ),
  AccountOptionsModel(myIcon: Icon(Icons.breakfast_dining), option: "Help"),
  AccountOptionsModel(myIcon: Icon(Icons.person), option: "About"),
];
