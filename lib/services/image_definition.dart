class ImageDefinition {
  final String id;
  final String title;
  final String description;
  final String assetURI;
  late bool isFavorite;
  final String category; // e.g., "Fantasy", "Military", "Nature"
  final String artist; // e.g., "John Doe"
  final String location; // e.g., "Greece", or "Digital Art"
  final DateTime uploadDate;

  ImageDefinition({
    required this.id,
    required this.title,
    required this.description,
    required this.assetURI,
    required this.isFavorite,
    required this.category,
    required this.artist,
    required this.location,
    DateTime? uploadDate, // <- make it optional
  }) : uploadDate = uploadDate ?? DateTime.now(); // <- fallback
}
