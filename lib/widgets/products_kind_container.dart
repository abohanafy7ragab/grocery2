import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_kind_model.dart';

class ProductsKindContainer extends StatelessWidget {
  final ProductKindModel myKind;
  const ProductsKindContainer({super.key, required this.myKind});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.w,
      height: 190.h,
      decoration: BoxDecoration(
        color: Color(myKind.myColor),
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(width: 1.w, color: Color(myKind.borderColor)),
      ),
      child: Column(
        children: [
          SizedBox(height: 27.h),
          Image.asset(
            myKind.imageUrl,
            width: 112.w,
            height: 75.h,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 27.5.h),
          Text(myKind.name, style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}
