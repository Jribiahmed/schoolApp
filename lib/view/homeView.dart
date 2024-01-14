import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'classeList.dart';


class Home extends StatefulWidget {
  @override
  HomeView createState() => HomeView();
}

class HomeView extends State<Home> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
                child: Form(
//            key: _keyForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            labelText: 'Email',
                            border: OutlineInputBorder()
                        ),
                        /* validator: (val) => val.isEmpty ? 'Entrez votre email' : null,
                        onChanged: (val) => email = val,*/
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            labelText: 'Mot de passe',
                            border: OutlineInputBorder()
                        ),
                        /* validator: (val) => val.length < 6 ? 'Entrez un password avec ou + de caracteres' : null,
                        onChanged: (val) => password = val,*/
                        obscureText: true,
                      ),
                      SizedBox(height: 20.0),

                      SizedBox(height: 20.0),
                      // ignore: deprecated_member_use
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2.0, color: Colors.blue),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          if (emailController.value.text == "admin@admin.tn" && passwordController.value.text == "admin") {
                            showError = false;
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ClasseList()),
                            );
                          } else {
                            setState(() {
                              showError = true; // Set showError to true
                            });
                          }
                        },
                        child: Text(
                          'Valide-moi',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    if (showError)
                      Text(
                        'Invalid login',
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0, // Increase font size
                        ),
                      ),
              // ... other widgets ...
                      SizedBox(height: 10.0),
                      // ignore: deprecated_member_use

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}