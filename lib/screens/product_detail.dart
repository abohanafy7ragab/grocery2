import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/widgets/plus_minus_buttons.dart';
import 'package:grocery/widgets/rating_stars.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
          body: SingleChildScrollView(
            child: Column(
              children: [
                ////////product view/////////
                Container(
                  height: 372.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 57.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          SizedBox(width: 25.h),
                          Icon(Icons.arrow_back_ios),
                          Icon(Icons.upload),
                          SizedBox(width: 25.h),
                        ],
                      ),
                      SizedBox(height: 28.h),
                      Image.asset(
                        "assets/apple2.png",
                        width: 330.w,
                        height: 200.h,
                        fit: BoxFit.contain,
                      ),
                      ///////////////   put dots   //////////////
                      ///
                      ///
                      ///
                    ],
                  ),
                ),

                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Naturel Red Apple",
                            style: TextStyle(fontSize: 24.sp),
                          ),
                          Icon(Icons.favorite),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "1kg, Price",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlusMinusButtons(),
                          Text(
                            "\$4.99",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.5.h),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Detail",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      SizedBox(height: 9.45.h),
                      Text(
                        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      SizedBox(height: 19.1.h),
                      Divider(),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nutritions",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 34.w,
                                  height: 18.h,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 169, 169, 169),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "100gr",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight(600),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.41.w),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 17.h),
                      Divider(),
                      SizedBox(height: 17.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Review",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                RatingStars(),
                                SizedBox(width: 15.41.w),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: 67.h,
                        decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(19.r),
                        ),
                        child: Center(
                          child: Text(
                            "Add To Basket",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight(600),
                              color: Color(0xffFFF9FF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                    ],
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
