class ReviewModel {
  final List<String> imageList;
  final String imglink;
  final String review;
  final String rating;

  ReviewModel({
    required this.imageList,
    required this.imglink,
    required this.review,
    required this.rating,
  });
}

final List<ReviewModel> reviewModelList = [
  ReviewModel(
    imageList: [
      "assets/image 5.png",
      "assets/car wash.jpeg",
      "assets/car wash 2.jpeg",
    ],
    imglink: "imglink",
    review: "review",
    rating: "rating",
  ),
];
