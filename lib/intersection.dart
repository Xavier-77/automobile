import 'package:flutter/material.dart';

class IntersectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Intersection routiere',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.jpg'), // Chemin vers l'image dans les actifs
            fit: BoxFit.cover, // Ajuste l'image pour couvrir toute la page
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300, // Largeur du conteneur des boutons
                  height: 500, // hauteur du conteneur des boutons
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Couleur de fond grise claire
                  borderRadius: BorderRadius.circular(20), // Bords arrondis
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 97),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder à la Leçon 1
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Fond vert foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Leçon 1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder à la Leçon 2
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Fond bleu foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Leçon 2",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder à la Leçon 3
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // Fond orange foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Leçon 3",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Veuillez choisir une leçon d'apprentissage!!!",
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IntersectionPage(),
  ));
}
