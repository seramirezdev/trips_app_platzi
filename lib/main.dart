import 'package:flutter/material.dart';
import 'package:trips_app_platzi/description_place.dart';
import 'package:trips_app_platzi/review_list.dart';
import 'package:trips_app_platzi/header.dart';
import 'package:flutter/services.dart';

void main() => runApp(TripsApp());

class TripsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      statusBarIconBrightness: Brightness.light, //top bar icons
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Lato",
      ),
      home: Scaffold(
        // body: D,
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(
                  namePlace: "Miami",
                  stars: 4,
                  desc:
                      "Minim veniam sint ut qui enim labore. Ea exercitation exercitation fugiat incididunt labore adipisicing anim exercitation ullamco sint et anim nostrud. Occaecat elit sit deserunt laborum adipisicing incididunt nostrud Lorem excepteur cillum.\n\nOccaecat irure dolore laboris ipsum cillum deserunt cillum laboris esse aliquip culpa velit. Magna veniam laborum sint commodo officia consequat aliqua aute aute ut non.",
                ),
                ReviewList()
              ],
            ),
            Header()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
