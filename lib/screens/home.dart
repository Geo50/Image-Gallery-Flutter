import 'package:flutter/material.dart';
import 'package:image_gallery/reusable_widgets/image_card.dart';
import 'package:image_gallery/screens/details_screen.dart';
import 'package:image_gallery/screens/favorites_screen.dart';
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
      isFavorite: false,
      category: 'Fantasy',
      artist: 'Evelyn Sky',
      location: 'Digital Art',
      uploadDate: DateTime(2025, 5, 10),
    ),
    ImageDefinition(
      id: "2",
      title: "Celestial Guardian",
      description:
          "A radiant angel poised between heaven and earth, wings outstretched in divine grace. This image captures the serene power and otherworldly presence of a celestial being, symbolizing hope, protection, and the eternal battle between light and darkness.",
      assetURI: "assets/angel.jpeg",
      isFavorite: false,
      category: 'Fantasy',
      artist: 'Evelyn Sky',
      location: 'Digital Art',
      uploadDate: DateTime(2025, 5, 10),
    ),
    ImageDefinition(
      id: "3",
      title: "Spartan Valor",
      description:
          "A fearsome Spartan warrior stands resolute in bronze armor, spear in hand and gaze fixed with unwavering resolve. This portrayal honors the unbreakable spirit and disciplined might of ancient Sparta’s legendary soldiers.",
      assetURI: "assets/spartan.png",
      isFavorite: false,
      category: 'Fantasy',
      artist: 'Evelyn Sky',
      location: 'Digital Art',
      uploadDate: DateTime(2025, 5, 10),
    ),
    ImageDefinition(
      id: "4",
      title: "Forest Sentinel",
      description:
          "An ancient tree towers above the misty forest floor, its roots entwined with moss and mystery. This piece evokes the quiet majesty and enduring strength of nature’s guardians.",
      assetURI: "assets/forest.jpeg",
      isFavorite: false,
      category: 'Nature',
      artist: 'Noah Elm',
      location: 'Canada',
      uploadDate: DateTime(2025, 3, 19),
    ),
    ImageDefinition(
      id: "5",
      title: "Cyber Ronin",
      description:
          "A lone samurai in futuristic armor patrols a neon-lit alley, blending ancient honor with digital rebellion. This artwork fuses tradition and tech in a striking cyberpunk vision.",
      assetURI: "assets/cyber.jpeg",
      isFavorite: false,
      category: 'Sci-Fi',
      artist: 'Yuki Tanaka',
      location: 'Tokyo',
      uploadDate: DateTime(2025, 5, 5),
    ),
    ImageDefinition(
      id: "6",
      title: "Lighthouse in the Storm",
      description:
          "Waves crash against jagged rocks as a solitary lighthouse beams defiantly through the tempest. A dramatic tribute to resilience and guidance in the face of chaos.",
      assetURI: "assets/lighthouse.jpeg",
      isFavorite: false,
      category: 'Seascape',
      artist: 'Clara Wren',
      location: 'Ireland',
      uploadDate: DateTime(2025, 4, 14),
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FavoritesScreen(allImages: imageGallery),
                ),
              );
            },
            icon: Icon(Icons.storage, color: Colors.amber),
          ),
        ],
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
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
