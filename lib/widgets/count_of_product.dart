import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

int count = 1;

class CountOfProduct extends StatefulWidget {
  const CountOfProduct({super.key});

  @override
  State<CountOfProduct> createState() => _CountOfProductState();
}

class _CountOfProductState extends State<CountOfProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            child: Container(
              width: 46.w,
              height: 46.h,
              decoration: BoxDecoration(
                border: Border.all(width: .5.w, color: Color(0xffF0F0F0)),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: Icon(Icons.remove, color: Color(0xffB3B3B3)),
              ),
            ),
          ),
          Text(
            "$count",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight(600)),
          ),
          InkWell(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Container(
              width: 46.w,
              height: 46.h,
              decoration: BoxDecoration(
                border: Border.all(width: .5.w, color: Color(0xffF0F0F0)),
                borderRadius: BorderRadius.circular(17.r),
              ),
              child: Center(child: Icon(Icons.add, color: Color(0xff53B175))),
            ),
          ),
        ],
      ),
    );
  }
}
