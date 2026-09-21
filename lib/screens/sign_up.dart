import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogUp extends StatelessWidget {
  const LogUp({super.key});

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.42.h),
                  Center(child: Image.asset("assets/carrot.png")),
                  SizedBox(height: 100.2.h),
                  Text(
                    "Log Up",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight(800),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(height: 40.h),

                  ////////// username //////////
                  TextFormField(
                    onTapOutside: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE2E2E2)),
                      ),
                    ),
                  ),

                  /////// Email /////////
                  TextFormField(
                    onTapOutside: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE2E2E2)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'entar email';
                      } else if (!value.contains('@')) {
                        return 'enter gmail right';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  SizedBox(height: 30.h),

                  //////// Password /////////
                  TextFormField(
                    obscureText: true,
                    onTapOutside: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE2E2E2)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter password';
                      }
                      final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z]).{8,}$');
                      if (!regex.hasMatch(value)) {
                        return 'should contain upper cases letter and lower cases and more than 8';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  SizedBox(height: 20.h),
                  ///// Forgot Password
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 8.w,
                    runSpacing: 8.h,
                    alignment: WrapAlignment.start,
                    children: [
                      Text("By continuing you agree to our "),
                      Text(
                        "Terms of Service",
                        style: TextStyle(color: Color(0xff53B175)),
                      ),
                      Text("and"),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(color: Color(0xff53B175)),
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),
                  SizedBox(height: 30.h),

                  ///// liog in button //////
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 67.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xff53B175),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xffFFF9FF),
                            fontWeight: FontWeight(600),
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),

                  ////// last text //////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(fontWeight: FontWeight(600)),
                      ),

                      Text(
                        "Singup",
                        style: TextStyle(
                          fontWeight: FontWeight(600),
                          color: Color(0xff53B175),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
