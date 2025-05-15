import 'package:flutter/material.dart';
import 'package:image_gallery/services/image_definition.dart';

class DetailsScreen extends StatefulWidget {
  final ImageDefinition item;

  const DetailsScreen({super.key, required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.item.isFavorite = !widget.item.isFavorite;
                // print({widget.item.isFavorite});
              });
            },
            icon: Icon(
              widget.item.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: widget.item.isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // To align text left
          children: [
            Image.asset(
              widget.item.assetURI,
              fit: BoxFit.contain,
              height: 300,
              width: double.infinity,
            ),

            const Divider(height: 40),
            Center(
              child: Text(
                widget.item.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About Image",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.item.description,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
