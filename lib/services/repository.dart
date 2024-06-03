import 'package:storezy/services/provider.dart';

import '../models/reviews.dart';

class ReviewRepository {
  StoreProvider storeProvider;
  ReviewRepository({required this.storeProvider});

  List<StoreReviews> readReviews() => storeProvider.readReviews();
  void writeReviews(List<StoreReviews> reviews) {
    storeProvider.writeReview(reviews);
  }
}
