import 'dart:async';
import 'package:agri_tools/home.dart';
import 'package:agri_tools/main.dart';
import 'package:agri_tools/scan.dart';
import 'package:agri_tools/fave.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main(){
  runApp(More());
}

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/logo2.png',
          ),
        ),
        leadingWidth: 150,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
              color: Colors.black54,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        child: Text('More Settings'),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40, left: 15, right: 15),
        decoration: BoxDecoration(
          color: Colors.green[800],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: GNav(
          selectedIndex: 3,
          color: Colors.black54,
          gap: 5,
          activeColor: Colors.green.shade300,
          tabBackgroundColor: Colors.green.shade900.withOpacity(0.4),
          padding: EdgeInsets.only(right: 10, left: 10,top: 15, bottom: 15),
          tabs: [
            GButton(
              icon: Icons.home,
              iconSize: 25,
              text: 'HOME',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
            ),
            GButton(
              icon: Icons.camera_outlined,
              text: 'SCAN',
              iconSize: 25,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Scanner(),
                ));
              },
            ),
            GButton(
              icon: Icons.star_border,
              iconSize: 25,
              text: 'SAVED',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Favourites(),
                ));
              },
            ),
            GButton(
              icon: Icons.arrow_drop_down_circle_outlined,
              iconSize: 25,
              text: 'MORE',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => More(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
