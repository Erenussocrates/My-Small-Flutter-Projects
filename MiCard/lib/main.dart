import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //CircleAvatar, is a widget that we can use to display a
              //circular profile picture. And we have to use the
              //backgroundImage: argument for it. That argument covers an
              //entire shape with the image you specify.
              CircleAvatar(
                backgroundImage: AssetImage("images/myimage.jpg"),
                radius: 60,
              ),
              Text(
                "Erenus Özer",
                style: TextStyle(
                  //This fontFamily: argument has to have the family of the
                  //custom font that I want to use.
                  fontFamily: "Sixtyfour",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "JACK OF ALL TRADES",
                style: TextStyle(
                  fontFamily: "SourceCodePro",
                  fontSize: 20,
                  color: Color.fromARGB(255, 110, 227, 15),
                  //to space the letters
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150, //width is here, so that divider doesn't go all the
                //way across the screen
                child: Divider(
                  color: Color.fromARGB(255, 8, 71, 43),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black45,
                    ),
                    title: Text(
                      "+999 666 888",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.black45,
                    ),
                    title: Text(
                      "erenus.me@me.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
