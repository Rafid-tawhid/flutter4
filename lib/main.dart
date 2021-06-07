import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 100
                  ),
                  child: Text(

                      "Learn Free",
                    style:TextStyle(
                      fontSize: 30,color: Colors.blue
                    ) ,
                  ),
                ),
                Container(padding:EdgeInsets.all(10),margin:EdgeInsets.all(15),child: Text("Learning is the best way to express yourself and its also good for to know your limit where to speak or not",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,))

              ],
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40
            ),
            child: Center(child: Image.asset("assets/images/bg.jpg")),
          ),
          Container(
            child: Container(
              width: double.infinity,

              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 16),)),

            ),
          )

        ],
      ),
    );
  }
}








