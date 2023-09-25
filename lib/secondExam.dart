import 'package:flutter/material.dart';
import 'dart:async';

class SecondExamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Examen 1',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Chronomètre en haut de la page
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CountdownTimer(), // Utilisez un widget de chronomètre personnalisé
          ),
          // Bouton Suivant en haut à droite
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                // Logique pour aller à la page suivante
              },
            ),
          ),
          // Carré vide au centre
          Center(
            child: Container(
              width: 330,
              height: 300,
              color: Colors.grey.withOpacity(0.2),
              // Vous pouvez personnaliser le contenu du carré ici
            ),
          ),
          SizedBox(height: 50),
          // Boutons A, B, C, D en bas de la page
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton A
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('A'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton B
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('B'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton C
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('C'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton D
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('D'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget de chronomètre personnalisé
class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _secondsRemaining = 25;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel(); // Arrêtez le chronomètre lorsque le temps est écoulé
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Temps restant: $_secondsRemaining s',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SecondExamPage(),
  ));
}
