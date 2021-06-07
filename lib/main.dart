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
      color: Colors.black,
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
  int _pageState=0;
  var _bgColor=Colors.white;
  double windowWidth=0;
  double windowHeight=0;
  double loginYOfset=0;
  double regYOfset=0;



  @override
  Widget build(BuildContext context) {

    windowHeight=MediaQuery.of(context).size.height;
    windowWidth=MediaQuery.of(context).size.width;
    switch(_pageState)
    {
      case 0:
        _bgColor=Colors.white24;
        loginYOfset=windowHeight;
        regYOfset=windowHeight;
        break;
      case 1:
        _bgColor=Colors.white70;
        loginYOfset=270;
        regYOfset=windowHeight;

        break;
      case 2:
        _bgColor=Colors.white70;
        loginYOfset=250;
        regYOfset=270;


        break;

    }

    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(microseconds: 1000),
          curve: Curves.fastLinearToSlowEaseIn,
          color: _bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:()
            {
              setState(() {
                _pageState=0;
              });
            },
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
                    Container(padding:EdgeInsets.symmetric(horizontal: 20),margin:EdgeInsets.all(15),child: Text("Learning is the best way to express yourself and its also good for to know your limit where to speak or not",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,))

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
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                     if(-_pageState !=0)
                       {
                         _pageState=0;
                       }
                     else
                       {
                         _pageState=1;
                       }
                    });
                  },
                  child: Container(
                    width: double.infinity,

                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 16),)),

                  ),
                ),
              )

            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=2;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            transform:Matrix4.translationValues(0,loginYOfset,1),
            decoration: BoxDecoration(

                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                )
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=2;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            transform:Matrix4.translationValues(0,regYOfset,1),
            decoration: BoxDecoration(

                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                )
            ),
          ),
        )
      ],
    );
  }
}








