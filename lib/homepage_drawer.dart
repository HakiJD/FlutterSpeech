import 'package:flutter/material.dart';
import 'package:speechimpaired/home.dart';
import 'package:speechimpaired/login.dart';

class HomePageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color(0xFFe07f98), const Color(0xFFf9c9b3)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/blue_diamondpng.png',
                        fit: BoxFit.cover, // this is the solution for border
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                    Text(
                      'User',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: const Color(0xFFe95b4c),
              ),
              title: Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new Home();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: const Color(0xFF9c7ccc)),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.storage, color: const Color(0xFF2980b9)),
              title: Text(
                'Records',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.black),
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.arrow_back, color: const Color(0xFFefb53d)),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new Login();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
