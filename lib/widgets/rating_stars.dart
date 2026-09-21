import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  double initialRating = 2.5;
  @override
  Widget build(BuildContext context) {
    return AnimatedRatingStars(
      initialRating: initialRating,
      minRating: 0.0,
      maxRating: 5.0,
      filledColor: Colors.amber,
      emptyColor: Colors.grey,
      filledIcon: Icons.star,
      halfFilledIcon: Icons.star_half,
      emptyIcon: Icons.star_border,
      onChanged: (double rating) {
        // Handle the rating change here
        setState(() {
          initialRating = rating;
        });
      },
      displayRatingValue: true,
      interactiveTooltips: true,
      customFilledIcon: Icons.star,
      customHalfFilledIcon: Icons.star_half,
      customEmptyIcon: Icons.star_border,
      starSize: 20.0.sp,
      animationDuration: Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      readOnly: false,
    );
  }
}
