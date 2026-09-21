import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_model.dart';
import 'package:grocery/widgets/home_slider.dart';
import 'package:grocery/widgets/product_container.dart';

List images = [
  "assets/banner2.avif",
  "assets/banner1.avif",
  "assets/banner3.avif",
  "assets/banner4.jpg",
];
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

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Center(child: Image.asset("assets/carrot.png", width: 30.w)),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 20, color: Color(0xff4C4F4D)),
                SizedBox(width: 6.w),
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(
                    color: Color(0xff4C4F4D),
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            ////////////////search///////////
            TextFormField(
              onTapOutside: (value) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                fillColor: Color(0xffF2F3F2),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "search store",
              ),
            ),

            SizedBox(height: 20.h),
            HomeSlider(),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight(600)),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(600),
                    color: Color(0xff53B175),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    ProductContainer(product: products[index]),
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
              ),
            ),

            //////////////////////////////////////////////////////////////////////////////////
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight(600)),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(600),
                    color: Color(0xff53B175),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    ProductContainer(product: products[index]),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Groceries",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight(600)),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(600),
                    color: Color(0xff53B175),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    ProductContainer(product: products[index]),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ProductContainer(imageUrl: "assets/banana.png", name: "Organic Bananas", name2: "7pcs, Priceg"),
