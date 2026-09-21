import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 531.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, right: 25.w, left: 25.w),
        child: Column(
          // mainAxisSize: MainAxisSize.values(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight(600),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Divider(),
            SizedBox(height: 21.h),
            //////////       1
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Method",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Divider(),
              ],
            ),
            ////////////////   2
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pament",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Method",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Divider(),
              ],
            ),
            /////////      3
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promo Code",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Pick discount",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Divider(),
              ],
            ),
            //////////////////  4
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Cost",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$13.97",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Divider(),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "By placing an order you agree to our Terms And Conditions",
              style: TextStyle(
                fontWeight: FontWeight(600),
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(height: 26.5.h),
            Container(
              height: 67.h,
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19.r),
              ),
              child: Text(
                "Place Order",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight(600),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
