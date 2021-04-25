import 'package:flutter/material.dart';
import 'package:careercenter/views/signup.view.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomeState();
  }
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622f74),
              gradient: LinearGradient(
                colors: [new Color(0xffc471ed), new Color(0xff12c2e9)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75.0,
                  child: ImageIcon(
                    AssetImage('assets/img/epitech.png'),
                    size: 100,
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
              ),
              Text(
                "EPITECH JUNIOR ENTREPRISE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Commencer"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupView(),
                      ),
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
//SignupView

/*Icon(
    Icons.verified_user,
    color: new Color(0xff12c2e9),
    size: 50.0,
  ),*/