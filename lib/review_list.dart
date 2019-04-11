import 'package:flutter/material.dart';
import 'package:trips_app_platzi/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage: "assets/images/people.jpg", autor: "Varuna Yasas", review: "1 review · 5 photos", comment: "There is an amazing place in Sri Lanka",),
        Review(pathImage: "assets/images/ann.jpg", autor: "Anahí Salgado", review: "2 review · 4 photos", comment: "There is an amazing place in Sri Lanka",),
        Review(pathImage: "assets/images/girl.jpg", autor: "Gissele Thomas", review: "3 review · 3 photos", comment: "There is an amazing place in Sri Lanka",),
      ],
    );
  }
}
