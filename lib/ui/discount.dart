
import 'package:flutter/material.dart';

import 'cate.dart';
class disCount extends StatefulWidget {
  @override
  _disCount createState() => _disCount();
}

class _disCount extends State<disCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: discoimage.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final categoriComp=discoimage[index];
          return Container(
            margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Row(
              children: <Widget>[
                Container(
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(
                            categoriComp.image),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(width:1),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(top: 6, bottom: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          categoriComp.name,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12
                          ),
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

