import 'dart:convert';

import 'package:get/get.dart';
import 'package:storezy/constants/keys.dart';
import 'package:storezy/services/storage_service.dart';

import '../models/reviews.dart';

class StoreProvider {
  final StorageService _storageService = Get.put(StorageService());

  List<StoreReviews> readReviews() {
    var reviews = <StoreReviews>[];
    jsonDecode(_storageService.read(reviewsKey).toString())
        .forEach((e) => reviews.add(StoreReviews.fromJson(e)));

    return reviews;
  }

  void writeReview(List<StoreReviews> reviews) {
    _storageService.write(reviewsKey, jsonEncode(reviews));
  }
}
