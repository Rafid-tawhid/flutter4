import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text("AppBar"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.add), onPressed: (){}),
            IconButton(icon: Icon(Icons.call_to_action), onPressed: (){}),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Settings"),
              decoration: BoxDecoration(
                color: Colors.red
              ),),
              ListTile(
                title: Text("Active member"),
                onTap: (){},
              ),
              ListTile(
                title: Text("Lazy member"),
                onTap: (){},
              ),
              ListTile(
                title: Text("Deactive member"),
                onTap: (){},
              )

            ],
          ),
        ),
      )
    );
  }
}

