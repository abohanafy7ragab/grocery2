import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/models/product_kind_model.dart';
import 'package:grocery/screens/beverages.dart';
import 'package:grocery/widgets/products_kind_container.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Column(
          children: [
            SizedBox(height: 8.h),
            Text(
              "Find Products",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight(600)),
            ),
            SizedBox(height: 30.h),
            TextFormField(
              onTapOutside: (value) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                fillColor: Color(0xffF2F3F2),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "search store",
              ),
            ),
            SizedBox(height: 20.h),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 10.w,
              runSpacing: 10.h,
              children: [
                ProductsKindContainer(myKind: productKinds[0]),
                ProductsKindContainer(myKind: productKinds[1]),
                ProductsKindContainer(myKind: productKinds[2]),
                ProductsKindContainer(myKind: productKinds[3]),
                ProductsKindContainer(myKind: productKinds[4]),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Beverages()),
                    );
                  },
                  child: ProductsKindContainer(myKind: productKinds[5]),
                ),
                ProductsKindContainer(myKind: productKinds[0]),
                ProductsKindContainer(myKind: productKinds[1]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<ProductKindModel> productKinds = [
  ProductKindModel(
    myColor: 0xff53B1751A,
    borderColor: 0xff53B175B2,
    imageUrl: "assets/fruits.png",
    name: "Frash Fruits& Vegetable",
  ),
  ProductKindModel(
    myColor: 0xffF8A44C1A,
    borderColor: 0xffF8A44CB2,
    imageUrl: "assets/oils.png",
    name: "Cooking Oil & Ghee",
  ),
  ProductKindModel(
    myColor: 0xffF7A59340,
    borderColor: 0xffF7A593,
    imageUrl: "assets/meet.png",
    name: "Meat & Fish",
  ),
  ///// 3 ///
  ProductKindModel(
    myColor: 0xffD3B0E040,
    borderColor: 0xffD3B0E0,
    imageUrl: "assets/bred.png",
    name: "Bakery & Snacks",
  ),
  //// 4  /////
  ProductKindModel(
    myColor: 0xffFDE59840,
    borderColor: 0xffFDE598,
    imageUrl: "assets/dairy.png",
    name: "Dairy & Eggs",
  ),
  ///// 5 ////////
  ProductKindModel(
    myColor: 0xffB7DFF540,
    borderColor: 0xffB7DFF5,
    imageUrl: "assets/bev.png",
    name: "Beverages",
  ),
];
