
import 'package:flutter/material.dart';

import 'ui/Desing.dart';
import 'ui/categorieslist.dart';
import 'ui/discount.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Computer Shopping')),
          flexibleSpace: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFF212121),
                    const Color(0xFF616161),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
        ),
        body: SafeArea(
          child: Scaffold(
            // backgroundColor: Colors.blue.shade300,
            body: SingleChildScrollView(

              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 190,
                    margin: EdgeInsets.all(5),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 25),
                          height: 190,
                          child: FeaturedList(),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text("Best sellers",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 25),
                    height: 190,
                    child: DesingMain(),
                  ),
                  SizedBox(height: 20,),
                  Text("Discount",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 25),
                    height: 190,
                    child: disCount(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}


