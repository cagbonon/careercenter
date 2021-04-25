import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  var name;
  HomeView({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listes d'emplois"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Bonjour M. "),
                  TextSpan(text: name),
                  TextSpan(
                      text:
                          ", voici une liste d'emplois disponibles pour vous."),
                ],
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
