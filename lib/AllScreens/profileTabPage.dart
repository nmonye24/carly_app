import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carly_app/configMaps.dart';

class ProfileTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              userCurrentInfo!.name,
              style: TextStyle(
                fontSize: 65.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Signatra',
              ),
            ),

            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),

            SizedBox(height: 40.0,),

            InfoCard(
              text: userCurrentInfo!.phone,
              icon: Icons.phone,
              onPressed: () async {
                print("this is phone.");
              },
            ),

            InfoCard(
              text: userCurrentInfo!.email,
              icon: Icons.email,
              onPressed: () async {
                print("this is email.");
              },
            ),

          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget
{
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  InfoCard({required this.text, required this.icon, required this.onPressed,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black87,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontFamily: 'Brand Bold',
            ),
          ),
        ),
      ),
    );
  }
}

