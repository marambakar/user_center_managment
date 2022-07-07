import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:user_center_managment/ui/screens/model.dart';

import 'card_model.dart';
import 'events.dart';
import 'outout.dart';

class favourite_bloc {
  List<model> colums = [
    new model(id:0,name1: "Name", name2: "Account", name3: "Type"),
    new model(id:1,name1: "Operation", name2: "Time", name3: "Status"),
    new model(id:2,name1: "Operion", name2: "me", name3: "atus"),

  ];
  List<model2> cards = [
    new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),
  new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),
  new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),

  ];
  List<model> all = [];
  static final favourite_bloc _home_bloc = favourite_bloc._favourite_bloc();
  factory favourite_bloc() {
    return _home_bloc;
  }
  //the stream for output
  final _stateStreamController = StreamController<favouriteoutput>.broadcast();
  StreamSink<favouriteoutput> get favouriteSink => _stateStreamController.sink;
  Stream<favouriteoutput> get favouriteStrem => _stateStreamController.stream;
  //the stream for event
  final _eventSteamContrller =
      StreamController<favouriteEvents_type>.broadcast();
  StreamSink<favouriteEvents_type> get eventSink => _eventSteamContrller.sink;
  Stream<favouriteEvents_type> get eventstream => _eventSteamContrller.stream;
  favourite_bloc._favourite_bloc() {
    eventstream.listen((event) async {
      if (event is fitchFavourite) {
        all = await fitchFavourites();

        favouriteoutput favouriteoutputt = favouriteoutput(all);
        favouriteSink.add(favouriteoutputt);
      }
    });
  }

  Future<List<model>> fitchFavourites() async {
    return colums;
  }
  Future<List<model>> fitch() async {
    return colums;
  }

  void dispose() {
    _eventSteamContrller.close();
    _stateStreamController.close();
  }
}
