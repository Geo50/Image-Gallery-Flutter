import 'package:flutter/material.dart';
import 'package:image_gallery/reusable_widgets/image_card.dart';
import 'package:image_gallery/screens/details_screen.dart';
import 'package:image_gallery/services/image_definition.dart';

class FavoritesScreen extends StatelessWidget {
  final List<ImageDefinition> allImages;

  const FavoritesScreen({super.key, required this.allImages});

  @override
  Widget build(BuildContext context) {
    final favoriteImages = allImages.where((img) => img.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Favorites",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
          favoriteImages.isEmpty
              ? const Center(child: Text("No favorites yet."))
              : ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: favoriteImages.length,
                itemBuilder: (context, index) {
                  return ImageCard(
                    item: favoriteImages[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) => DetailsScreen(item: favoriteImages[index]),
                        ),
                      );
                    },
                  );
                },
              ),
    );
  }
}
