import 'dart:core';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/gerald.jpeg'),
              ),
              Text(
                'Gerald Campana',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'NODEJS BACKEND DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                    width: 100,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'a.k.a',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15,
                      letterSpacing: 2.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 20,
                    width: 100,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lover Boy',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InkWell(
                onTap: () => this._launchCall(),
                child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.grey.shade600,
                      ),
                      title: Text(
                        '+63 123 456 7890',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => this._launchEmail(),
                child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.grey.shade600,
                      ),
                      title: Text(
                        'geraldloverboy@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _launchCall() async {
    const phoneNumber = 'tel:+63 123 456 7890';
    await launch(phoneNumber);
  }

  _launchEmail() async {
    final emailURI =
        'mailto:geraldloverboy@gmail.com?subject=Hi Gerald!&from=test@gmail.com';
    await launch(emailURI);
  }
}
