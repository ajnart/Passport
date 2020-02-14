import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp( debugShowCheckedModeBanner: false,  home: Passport(), ));

class Passport extends StatefulWidget {
  @override
  _PassportState createState() => _PassportState();
}

class _PassportState extends State<Passport> {
  String name = "Thomas Camlong";
  String username = "Ajnart";
  String mail = "thomas.camlong@epitech.eu";
  String number = "06 77 25 95 40";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //   BottomNavigationBarItem(icon: new Icon(Icons.access_alarms),title:Text("Test")),
      //   BottomNavigationBarItem(title: Text("Test2"), icon: Icon(Icons.access_alarms))
      //   ]),
      appBar: AppBar(
        title: Text("Appbar."),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
              child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/main.jpg"),
                    radius: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("NAME:",
                    style: TextStyle(
                        color: Colors.grey, letterSpacing: 2, fontSize: 15)),
                SizedBox(
                  height: 10,
                ),
                Text("$name",
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30,
                ),
                Text("USERNAME:",
                    style: TextStyle(
                        color: Colors.grey, letterSpacing: 2, fontSize: 15)),
                SizedBox(
                  height: 10,
                ),
                Text("$username",
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.grey[400]),
                    FlatButton(
                      onPressed: () {
                        launch("mailto:$mail");
                      },
                      child: Text("$mail",
                          style: TextStyle(
                              color: Colors.amberAccent[200],
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.grey[400]),
                    FlatButton(
                      onPressed: () {
                        launch("tel://$number");
                      },
                      child: Text("$number",
                          style: TextStyle(
                              color: Colors.amberAccent[200],
                              letterSpacing: 2,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ],
            )),
      ),
      endDrawer: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text("Made with ♥ in Bordeaux",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1,
                  fontSize: 18,
                  fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}