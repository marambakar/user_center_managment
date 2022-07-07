import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'bloc.dart';

class cardItem_design extends StatefulWidget {
  String name;
  String account;
  String type;
  String status;
  String time;
  String Operation;

  cardItem_design({
    required this.name,
    required this.account,
    required this.type,
    required this.status,
    required this.time,
    required this.Operation,
  });

  @override
  _cardItem_design createState() => _cardItem_design();
}

class _cardItem_design extends State<cardItem_design> {
  //note : i have to make the width with mediaquery
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
        //    width: 400,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/image.png"),
                //  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Name: ",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Account: ",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            widget.account,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Type: ",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            widget.type,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Status: ",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            widget.status,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
