import 'package:flutter/material.dart';

import 'Body.dart';
import 'LoginPage.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
      DefaultTabController(
        length: 2,

        child: Scaffold(
        appBar:
        AppBar(title: Center(child: Text("My app"),

        ),
        bottom: TabBar(tabs: [
          Icon(Icons.home),
          Icon(Icons.login)
        ]),
        leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.menu),
          ],
        ),
          body:
          TabBarView(children: [
            Bodyy(),
            LoginPage()
          ],)



        ),
      )
    );
  }
}
