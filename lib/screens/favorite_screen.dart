import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/widgets/product_in_favorite.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[0]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[1]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[2]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[3]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[4]),
                    SizedBox(height: 30.h),
                    Divider(),
                    SizedBox(height: 30.h),
                    ProductInFavorite(product: products[5]),
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
                  "Add All To Cart",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight(600),
                    color: Color(0xffFCFCFC),
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// double totalPrice = 0;

List<ProductModel> products = [
  ProductModel(
    image: "assets/colaDait.png",
    title: "Diet Coke",
    description: "355ml, Price",
    price: 1.99,
  ), //0
  ProductModel(
    image: "assets/sprite.png",
    title: "Sprite Can",
    description: "325ml, Price",
    price: 1.50,
  ), //1
  ProductModel(
    image: "assets/appleJuice.png",
    title: "Apple & Grape Juice",
    description: "2L, Price",
    price: 15.99,
  ), //2
  ProductModel(
    image: "assets/orangeJuice.png",
    title: "Orenge Juice",
    description: "2L, Price",
    price: 1.99,
  ), //3
  ProductModel(
    image: "assets/coka.png",
    title: "Coca Cola Can",
    description: "325ml, Price",
    price: 4.99,
  ), //4
  ProductModel(
    image: "assets/pepsi.png",
    title: "Pepsi Can ",
    description: "330ml, Price",
    price: 4.99,
  ), //5
];
