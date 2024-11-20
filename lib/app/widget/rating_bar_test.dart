import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarTest extends StatelessWidget {
  const RatingBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 0.5,
      allowHalfRating: true,
      direction: Axis.horizontal,
      itemCount: 5,
      onRatingUpdate: (rating) {
        print(rating);
      },
      itemBuilder: (context, int index) {
        return Icon(
          Icons.star,
          color: Colors.yellow,
        );
      },
    );
  }
}
