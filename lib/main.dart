import 'package:flutter/material.dart';
import 'package:flutter_remarkscreen/containers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        BottomContainer(),
        TopContainer(),
        Container(
          alignment: Alignment.bottomCenter,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 12),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              //the container bellow is the circle with the tick inside
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 40),
                width: MediaQuery.of(context).size.width / 4.3,
                height: MediaQuery.of(context).size.width / 4.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width / 8,
                  ),
                ),
              ),

              Text(
                'great',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 80),

              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Text('now you can enter the data to login',
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                    textAlign: TextAlign.center),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 6),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width / 1.25,
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 40),
                color: Colors.white,
                child: Text(
                  'back',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                onPressed: () {
                  print('enter pressed function');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
