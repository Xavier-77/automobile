import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //SizedBox(height: 50),
            Text('ZAMSE WEFO', 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text('Inscription', 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
          SignUpForm(),
          SizedBox(height: 100),
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
      
    );
    
  }
  
}


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction, // Activer la validation automatique lors de l'interaction de l'utilisateur
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nom d\'utilisateur'),
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un nom d\'utilisateur';
              }
              return null;
            },
            onSaved: (value) {
              _username = value!;
            },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un numéro de téléphone';
                }
                return null;
              },
              onSaved: (value) {
                _phoneNumber = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un mot de passe';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirmez le mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value != _password) {
                  return 'Les mots de passe ne correspondent pas';
                }
                return null;
              },
              onSaved: (value) {
                _confirmPassword = value!;
              },
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  _formKey.currentState?.save();
                  // Vous pouvez maintenant utiliser les valeurs _username, _phoneNumber, _password, _confirmPassword
                  // pour le traitement d'inscription
                }
              },
              style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Fond bleu
                    foregroundColor: Colors.white, // Texte blanc
                    minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                    padding: EdgeInsets.all(16), // Espacement interne du bouton
                  ),
              child: Text('S\'inscrire',style: TextStyle(fontSize: 20), ),
              
            ),
          ],
        ),
      ),
      
    );
    
  }
}
