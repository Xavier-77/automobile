import 'package:flutter/material.dart';
import 'panneaux.dart';
import 'feux.dart';
import 'intersection.dart';
class ApprentissagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Apprentissage',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 238, 237, 241),
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
                height: 500,
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
                        // Logique pour accéder aux panneaux
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PanneauxPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 0, 0), // Fond rouge foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Panneaux",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                     SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux feux tricolores
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FeuxPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 191, 0), // Fond jaune foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Feux tricolores",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                     SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux intersections routières
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => IntersectionPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, // Fond bleu foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Intersections ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Veuillez choisir un module d'apprentissage!!!",
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
    home: ApprentissagePage(),
  ));
}
