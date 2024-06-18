import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, Adnan!"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 151, 15, 15),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('images/satu.png'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Pokemon Favorit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 320,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PokemonCard(imagePath: 'images/dua.png'),
                    PokemonCard(imagePath: 'images/tiga.png'),
                    PokemonCard(imagePath: 'images/empat.png'),
                    PokemonCard(imagePath: 'images/lima.png'),
                    PokemonCard(imagePath: 'images/enam.png'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 320,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PokemonCard(imagePath: 'images/tujuh.png'),
                    PokemonCard(imagePath: 'images/delapan.png'),
                    PokemonCard(imagePath: 'images/sembilan.png'),
                    PokemonCard(imagePath: 'images/sepuluh.png'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final String imagePath;

  const PokemonCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        child: Card(
          elevation: 4,
          child: Image.asset(
            imagePath,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
