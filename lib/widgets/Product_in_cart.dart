import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/widgets/count_of_product.dart';

class ProductInCart extends StatelessWidget {
  final ProductModel product;
  const ProductInCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        // width:double.infinity ,
        height: 97.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      product.image,
                      width: 87.w,
                      height: 87.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                SizedBox(width: 28.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight(600),
                          ),
                          // overflow: TextOverflow.ellipsis,maxLines: 1,
                        ),
                        Text(
                          product.description,
                          style: TextStyle(color: Color(0xff7C7C7C)),
                          // maxLines: 1,overflow: TextOverflow.ellipsis
                        ),
                      ],
                    ),
                    CountOfProduct(),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.close, color: Color(0xffB3B3B3)),
                Text(
                  "\$ ${product.price}",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
