import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ArtSpace(),
  ));
}

class ArtSpace extends StatefulWidget {
  const ArtSpace({super.key});

  @override
  State<ArtSpace> createState() => _ArtSpaceState();
}

class _ArtSpaceState extends State<ArtSpace> {
  int currentArt = 0;

  List<String> images = [
    'assets/images/art1.jpg', 
    'assets/images/art2.jpg',
    'assets/images/art3.jpg',
  ];

  List<String> titles = [
    'Dodger Stadium',
    'After The Gold Rush',
    'Earth',
  ];

  List<String> artists = [
    'LA Dodger Photographers (2024)',
    'Neil Young (1970)',
    'European Space Agency (2025)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              images[currentArt],
              height: 400,
            ),

            Column(
              children: [
                Text(
                  titles[currentArt],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  artists[currentArt],
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentArt == 0) {
                        currentArt = images.length - 1;
                      } else {
                        currentArt--;
                      }
                    });
                  },
                  child: const Text('Previous'),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentArt == images.length - 1) {
                        currentArt = 0;
                      } else {
                        currentArt++;
                      }
                    });
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}