//THIS FILE IS FOR THE HOME PREVIEW INDIVIDUAL IMAGE CARD, WILL BE USED IN A LISTVIEW BUILDER
import 'package:flutter/material.dart';
import 'package:image_gallery/services/image_definition.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.item, required this.onTap});
  final ImageDefinition item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Image.asset(
            item.assetURI,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity, // make it expand horizontally
          ),
        ),
      ),
    );
  }
}
