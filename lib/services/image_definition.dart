class ImageDefinition {
  final String id;
  final String title;
  final String description;
  final String assetURI;
  late bool isFavorite;

  ImageDefinition({
    required this.id,
    required this.title,
    required this.description,
    required this.assetURI,
    required this.isFavorite,
  });
}
