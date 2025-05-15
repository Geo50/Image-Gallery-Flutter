import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Add intl to pubspec.yaml
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
    final formattedDate = DateFormat.yMMMMd().format(widget.item.uploadDate);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.item.isFavorite = !widget.item.isFavorite;
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.item.assetURI,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.item.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Chip(label: Text(widget.item.category)),
                  const SizedBox(width: 10),
                  Text(
                    "By ${widget.item.artist}",
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Location: ${widget.item.location}",
                style: const TextStyle(color: Colors.black54),
              ),
              Text(
                "Uploaded on: $formattedDate",
                style: const TextStyle(color: Colors.black54),
              ),
              const Divider(height: 30, thickness: 1.2),
              const Text(
                "About this image",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.item.description,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
