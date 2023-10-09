class Shoes {
  final String? name;
  double? price;
  int? qty;
  final String? description;
  final String? category;
  final String? urlImage;
  final List<String>? images;
  final List<String>? size;
  bool isFavorite = false;

  Shoes({
    this.name,
    this.price,
    this.qty,
    this.description,
    this.category,
    this.urlImage,
    this.images,
    this.size,
  });
}
