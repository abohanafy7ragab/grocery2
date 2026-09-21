import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/screens/filters.dart';
import 'package:grocery/widgets/product_container.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

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
                children: [
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "Beverages",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Filters()),
                          );
                        },
                        child: Icon(Icons.flip_camera_android),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 10.w,
                    runSpacing: 10.h,
                    children: [
                      ProductContainer(product: products[0]),
                      ProductContainer(product: products[1]),
                      ProductContainer(product: products[2]),
                      ProductContainer(product: products[3]),
                      ProductContainer(product: products[4]),
                      ProductContainer(product: products[5]),
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
