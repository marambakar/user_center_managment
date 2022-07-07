import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_center_managment/ui/screens/item_design.dart';

import 'bloc.dart';
import 'events.dart';
import 'outout.dart';

class favourite_screen extends StatefulWidget {
  static int store_id = 0;
// HomePage({required this.store_id});
  @override
  _favourite_screen createState() => _favourite_screen();
}

class _favourite_screen extends State<favourite_screen> {
  favourite_bloc favourite_blocc = favourite_bloc();

  double _width = 0;
  double _heigh = 200;

  @override
  void initState() {
    favourite_blocc.eventSink.add(fitchFavourite());
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
              child: StreamBuilder<favouriteoutput>(
                stream: favourite_blocc.favouriteStrem,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                  image: AssetImage(
                                    "assets/images/images (1).png",
                                  ),
                                  width: 15,height: 15),
                              SizedBox(width: 10,),

                              SmoothPageIndicator(
                                controller: controller,
                                count: snapshot.data!.favouriteResult.length,
                                effect: WormEffect(
                                  activeDotColor: _currentIndex == 0
                                      ? Colors.black
                                      : Colors.red,
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  type: WormType.thin,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Image(
                                  image: AssetImage(
                                    "assets/images/images.png",
                                  ),
                                  width: 15,height: 15),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              width: (MediaQuery.of(context).size.width),
                              height:
                                  (MediaQuery.of(context).size.height) + (-100),
                              child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: controller,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  _width = MediaQuery.of(context).size.width;
                                  return GestureDetector(
                                    child: favouriteItem_design(
                                      Column1Name: snapshot
                                          .data!.favouriteResult[index].name1,
                                      Column2Name: snapshot
                                          .data!.favouriteResult[index].name2,
                                      Column3Name: snapshot
                                          .data!.favouriteResult[index].name3,
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
