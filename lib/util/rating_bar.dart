import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;

  RatingBar({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          index < rating.floor() ? Icons.star : Icons.star_border,
          color: Colors.amber,
        ),
      ),
    );
  }
}
