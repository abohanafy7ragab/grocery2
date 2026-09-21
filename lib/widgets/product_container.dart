import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';

class ProductContainer extends StatelessWidget {
  final ProductModel product;

  const ProductContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      width: 173.w,
      height: 248.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        children: [
          SizedBox(height: 25.5.h),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(product.image),
            ),
          ),
          SizedBox(height: 25.5.h),
          //////////////////////////////
          Align(
            alignment: Alignment.topLeft,
            child: Expanded(
              child: Text(
                product.title,
                style: TextStyle(fontSize: 16.sp),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Expanded(
              child: Text(
                product.description,
                style: TextStyle(color: Color(0xff7C7C7C)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          ////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "\$ ${product.price}",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight(600),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: 45.5.w,
                height: 45.5.h,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(17.r),
                ),
                child: Center(
                  child: Icon(Icons.add, size: 25.sp, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
