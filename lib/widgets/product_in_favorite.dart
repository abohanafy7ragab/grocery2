import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';

class ProductInFavorite extends StatelessWidget {
  final ProductModel product;
  const ProductInFavorite({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                product.image,
                height: 60.h,
                width: 40.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 37.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight(600),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    product.description,
                    style: TextStyle(color: Color(0xff7C7C7C)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "\$ ${product.price}",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight(600)),
              ),
              SizedBox(width: 18.w),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ],
      ),
    );
  }
}
