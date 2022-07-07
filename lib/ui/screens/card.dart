import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_center_managment/ui/screens/card_event.dart';
import 'package:user_center_managment/ui/screens/card_output.dart';
import 'package:user_center_managment/ui/screens/item_design.dart';

import 'bloc+card.dart';
import 'bloc.dart';
import 'card_design.dart';
import 'events.dart';
import 'outout.dart';

class card_screen extends StatefulWidget {
  static int store_id = 0;
// HomePage({required this.store_id});
  @override
  _card_screen createState() => _card_screen();
}

class _card_screen extends State<card_screen> {
  card_bloc card_blocc = card_bloc();

  double _width = 0;
  double _heigh = 200;

  @override
  void initState() {
    card_blocc.eventSink.add(fitchCards());
    //here we have to git data so we need to put event fitch in sink of event
    super.initState();
  }

  @override
  void dispose() {
    // _home_bloc.dispose();

    super.dispose();
  }

  bool isExpand = true;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: StreamBuilder<cardoutput>(
                stream: card_blocc.cardStrem,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          SingleChildScrollView(
                            child: Container(
                            //  width: 300,
                              height:
                              (MediaQuery.of(context).size.height) + (-100),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                controller: controller,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  _width = MediaQuery.of(context).size.width;
                                  return GestureDetector(
                                    child: cardItem_design(
                                      name: snapshot.data!.cardResult[index].name,
                                 account: snapshot.data!.cardResult[index].account,
                                      Operation: snapshot.data!.cardResult[index].operation,
                                      status: snapshot.data!.cardResult[index].status,
                                      time: snapshot.data!.cardResult[index].type,
                                      type: snapshot.data!.cardResult[index].type,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ]);
                  } else
                    return Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
