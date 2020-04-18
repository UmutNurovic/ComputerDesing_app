import 'package:flutter/material.dart';

import 'cate.dart';
class DesingMain extends StatefulWidget {
  @override
  _DesingMainState createState() => _DesingMainState();
}

class _DesingMainState extends State<DesingMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ImagesCoteCom.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final categoriComp=ImagesCoteCom[index];
          return Container(
            margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(
                            categoriComp.image),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(width: 8),
                Container(
                  width: 240,
                  margin: EdgeInsets.only(top: 6, bottom: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                       categoriComp.name,
                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10
                       ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.shopping_cart, color: Colors.blue),
                              SizedBox(width: 5),
                              Text(
                              categoriComp.fiyat,style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star_border,
                                  color: Colors.blue),
                              SizedBox(width: 5),
                              Text(
                                "4.8",
                              )
                            ],
                          ),
                          SizedBox(width: 10),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

