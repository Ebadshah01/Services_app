class SubCategory {
  final String name;
  final String image;
  final String service;
  final String price;

  SubCategory({
    required this. name,
    required this.image,
    required this.service,
    required this.price,
  });
}

final List<SubCategory> subCategorylist = [
  SubCategory(
    name: "title",
    image: "image",
    service: "category",
    price: "price",
  ),
];
