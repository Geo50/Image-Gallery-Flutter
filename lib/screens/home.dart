import 'package:flutter/material.dart';
import 'package:image_gallery/reusable_widgets/image_card.dart';
import 'package:image_gallery/screens/details_screen.dart';
import 'package:image_gallery/services/image_definition.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ImageDefinition> imageGallery = [
    ImageDefinition(
      id: "1",
      title: "Sky Dominator",
      description:
          "A sleek fighter jet tears through the clouds, a symbol of cutting-edge technology and aerial supremacy. This image encapsulates speed, precision, and the raw power of modern air combat.",
      assetURI: "assets/jet.jpeg",
    ),
    ImageDefinition(
      id: "2",
      title: "Celestial Guardian",
      description:
          "A radiant angel poised between heaven and earth, wings outstretched in divine grace. This image captures the serene power and otherworldly presence of a celestial being, symbolizing hope, protection, and the eternal battle between light and darkness.",
      assetURI: "assets/angel.jpeg",
    ),
    ImageDefinition(
      id: "3",
      title: "Spartan Valor",
      description:
          "A fearsome Spartan warrior stands resolute in bronze armor, spear in hand and gaze fixed with unwavering resolve. This portrayal honors the unbreakable spirit and disciplined might of ancient Sparta’s legendary soldiers.",
      assetURI: "assets/spartan.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          "Discover Our Gallery",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20), // instead of using a SizedBox
        itemCount: imageGallery.length,
        itemBuilder: (context, index) {
          return ImageCard(
            item: imageGallery[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(item: imageGallery[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
