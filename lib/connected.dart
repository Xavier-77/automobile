import 'package:flutter/material.dart';
import 'courses.dart';
import 'exam.dart';

class ConnectedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vous êtes connectés",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            

          ),
        ),
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
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green, // Couleur du logo
                    size: 100, // Taille du logo
                  ),
                  SizedBox(height: 130),
                  //Text(
                   // "Vous êtes connecté",
                   // style: TextStyle(
                   //   fontSize: 24,
                   //   fontWeight: FontWeight.bold,
                   // ),
                  //),
                ],
              ),
               // Espacement entre le titre et les boutons
              Container(
                width: 300, // Largeur du conteneur des boutons
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Couleur de fond grise claire
                  borderRadius: BorderRadius.circular(20), // Bords arrondis
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Ombre légère
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 77),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux cours
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ApprentissagePage(),
                      ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 7, 139, 77), // Fond vert foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Cours",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux examens
                         Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExamPage(),
                      ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 191, 0), // Fond jaune foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "Examen",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120), // Espacement entre les boutons et le texte
              Text(
                "Veuillez commencer votre aventure!!!",
                style: TextStyle(
                 fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white, // Couleur du texte en blanc
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
