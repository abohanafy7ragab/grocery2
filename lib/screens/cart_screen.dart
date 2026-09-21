import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/widgets/Product_in_cart.dart';
import 'package:grocery/widgets/my_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 7.h),
              Text(
                "My Cart",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight(600)),
              ),
              SizedBox(height: 32.h),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[0]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[1]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[2]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[3]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[3]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInCart(product: products[3]),
                    SizedBox(height: 30.h),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 25.h,
          right: 25.w,
          left: 25.w,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                // scrollControlDisabledMaxHeightRatio: 600,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: MyBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 25),
              height: 67.h,
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 40.w),
                  Text(
                    "Go to Checkout",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight(600),
                      color: Color(0xffFCFCFC),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff489E67),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Text("\$ $totalPrice"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

double totalPrice = 0;

List<ProductModel> products = [
  ProductModel(
    image: "assets/banana.png",
    title: "organic bananas",
    description: "dbdcwk",
    price: 6.58,
  ),
  ProductModel(
    image: "assets/felfel.png",
    title: "beautiful felfel",
    description: "dbdcwk",
    price: 9,
  ),
  ProductModel(
    image: "assets/apple.png",
    title: "red apple",
    description: "dbdcwk",
    price: 34,
  ),
  ProductModel(
    image: "assets/banana2.png",
    title: "beatiful bananas",
    description: "dbdcwk",
    price: 12,
  ),
];
