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
        child: Container(
          padding: EdgeInsets.fromLTRB(32, 10, 32, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Bonjour M. "),
                    TextSpan(text: name),
                    TextSpan(
                        text:
                            ", voici une liste des entreprises disponibles et des missions et responsabilités qui seront confiées au stagiaire."),
                  ],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontFamily: 'Montserrat Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TitleText(
                title: "ATS AFRIQUE SARL",
              ),
              SizedBox(
                height: 14,
              ),
              LogoJob(
                path: "assets/img/ATS.jpg",
                size: 250,
              ),
              SizedBox(
                height: 14,
              ),
              SimpleText(
                text:
                    "Missions/Responsabilités du stagiaire : Développementd’interfaces entre applications de gestions et Développement d’application de contrôle d’accès et de gestion de temps interfacées avec des terminaux.",
              ),
              SizedBox(
                height: 14,
              ),
              TitleText(
                title: "BOUYGUES",
              ),
              SizedBox(
                height: 14,
              ),
              LogoJob(
                path: "assets/img/bouygues.jpg",
                size: 250,
              ),
              SizedBox(
                height: 14,
              ),
              SimpleText(
                text:
                    "Missions/Responsabilités du stagiaire : Veiller au bon fonctionnement de serveurs, des postes de travail, du réseau informatique dans  sa  globalité  et  des  communications  (voix  et  données),  superviser  les  projets  de développement.",
              ),
              SizedBox(
                height: 14,
              ),
              TitleText(
                title: "WAOUH MONDE",
              ),
              SizedBox(
                height: 14,
              ),
              LogoJob(
                path: "assets/img/waouhmonde.jpeg",
                size: 100,
              ),
              SizedBox(
                height: 14,
              ),
              SimpleText(
                text:
                    "Missions/Responsabilités du stagiaire : Participer à la conception de wireframes et au maquettage/prototypagede pages pour sitesweb ou applications; participer  au  développement frontenddes différents pages  web/Mobile en  fonction des marquettes proposées ou non; participer au développement backendde sites et/ou applications.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  String title;
  // padding: EdgeInsets.fromLTRB(32, 70, 32, 0),

  TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Montserrat Bold',
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class LogoJob extends StatelessWidget {
  String path;
  double size;

  LogoJob({this.path, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      child: Card(
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

class SimpleText extends StatelessWidget {
  String text;

  SimpleText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Montserrat Bold',
        color: Colors.black87,
      ),
    );
  }
}
