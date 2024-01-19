// Add the following modifications to the existing 'local_business.dart' file

class LocalBusiness {
  final String name;
  final String category;
  final double rating;
  final List<CustomerReview> reviews;
  final bool isSustainable; // New property for sustainability

  LocalBusiness({
    required this.name,
    required this.category,
    this.rating = 0.0,
    this.reviews = const [],
    this.isSustainable = false, // Default is not sustainable
  });
}

class CustomerReview {
  final String customerName;
  final String reviewText;
  final double rating;

  CustomerReview({
    required this.customerName,
    required this.reviewText,
    required this.rating,
  });
}
