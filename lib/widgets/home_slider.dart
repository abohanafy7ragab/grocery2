import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List images = [
  "assets/banner2.avif",
  "assets/banner1.avif",
  "assets/banner3.avif",
  "assets/banner4.jpg",
];

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119.0.h,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (i, reason) {
              setState(() {
                index = i;
              });
            },
          ),
          items: images
              .map(
                (i) => Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.symmetric(vertical: 7.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(i).image,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 0,
          left: 145.w,
          child: AnimatedSmoothIndicator(
            activeIndex: index,
            count: 4,

            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotHeight: 8.h,
              dotWidth: 8.w,
              spacing: 4.w,
              dotColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
