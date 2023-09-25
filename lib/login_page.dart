import 'package:flutter/material.dart';
import 'connected.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //SizedBox(height: 50),
            Text('ZAMSE WEFO', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                
                // Gérer l'action de connexion ici
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ConnectedPage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 139, 77), // Fond bleu
                foregroundColor: Colors.white, // Texte blanc
                minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                padding: EdgeInsets.all(16), // Espacement interne du bouton
              ),
              child: Text('Se connecter', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Naviguer vers la page de réinitialisation du mot de passe
                // lorsque l'utilisateur appuie sur "Mot de passe oublié"
              },
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "L'apprentissage automatique à votre portée!!!",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
