import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/widgets/check_box.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25.w),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close),
                        ),
                      ],
                    ),
                    Text("filters", style: TextStyle(fontSize: 20.sp)),
                    SizedBox(width: 45.h),
                  ],
                ),
                SizedBox(height: 30.h),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F3F2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.w,
                        vertical: 22.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.h),
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight(600),
                                ),
                              ),
                              SizedBox(height: 28.54.h),
                              CheckBox(option: "Eggs"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Noodles & Pasta"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Chips & Crisps"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Fast Food"),
                              SizedBox(height: 41.h),
                              Text(
                                "Brand",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight(600),
                                ),
                              ),
                              SizedBox(height: 25.h),
                              CheckBox(option: "Individual Callection"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Cocola"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Ifad"),
                              SizedBox(height: 20.h),
                              CheckBox(option: "Kazi Farmas"),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 67.h,
                            decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius: BorderRadius.circular(19.r),
                            ),
                            child: Center(
                              child: Text(
                                "Apply Filter",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight(600),
                                  color: Color(0xffFFF9FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
