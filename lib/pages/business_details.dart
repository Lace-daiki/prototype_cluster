import 'package:flutter/material.dart';

import '../components/local_business.dart';
import '../util/rating_bar.dart';

class BusinessDetailsPage extends StatelessWidget {
  final LocalBusiness business;

  BusinessDetailsPage({required this.business});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black54,
        title: Text(
          business.name,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category: ${business.category}',
              style: TextStyle(
                fontSize: 22,
                // fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            Text(
              'Rating: ${business.rating.toString()}',
              style: TextStyle(
                fontSize: 22,
                // fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 36.0),
            Text(
              'Customer Reviews',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: business.reviews.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(business.reviews[index].customerName),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar(
                          rating: business.reviews[index].rating,
                        ),
                        Text(business.reviews[index].reviewText),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
