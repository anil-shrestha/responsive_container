import 'package:flutter/material.dart';
import 'package:responsiveui_container/responsiveui_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Container Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RContainer(
        mobile: MobileHomePage(),
        tablet: TabHomePage(),
        desktop: DesktopHomePage(),
      ),
    );
  }
}

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Page"),
      ),
      drawer: drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
      ),
    );
  }
}

class TabHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          drawer(),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          desktopMenu(),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

Widget drawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Login"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
        ),
      ],
    ),
  );
}

Widget desktopMenu() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton(onPressed: () {}, child: Icon(Icons.home)),
      TextButton(onPressed: () {}, child: Icon(Icons.person)),
      TextButton(onPressed: () {}, child: Icon(Icons.info)),
    ],
  );
}
