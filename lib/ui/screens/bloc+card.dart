import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:user_center_managment/ui/screens/model.dart';

import 'card_event.dart';
import 'card_model.dart';
import 'card_output.dart';
import 'events.dart';
import 'outout.dart';

class card_bloc {

  List<model2> cards = [
    new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),
    new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),
    new model2(id:0,name: "XVD",account: "600040", type: "Standard A", status: "Normal",operation: "VIEW"),

  ];
  List<model2>all = [];
  static final card_bloc _card_bloc = card_bloc._card_bloccc();
  factory card_bloc() {
    return _card_bloc;
  }
  //the stream for output
  final _stateStreamController = StreamController<cardoutput>.broadcast();
  StreamSink<cardoutput> get favouriteSink => _stateStreamController.sink;
  Stream<cardoutput> get cardStrem => _stateStreamController.stream;
  //the stream for event
  final _eventSteamContrller =
  StreamController<cardEvents_type>.broadcast();
  StreamSink<cardEvents_type> get eventSink => _eventSteamContrller.sink;
  Stream<cardEvents_type> get eventstream => _eventSteamContrller.stream;
  card_bloc._card_bloccc() {
    eventstream.listen((event) async {
      if (event is fitchCards) {
        all = await fitch();

        cardoutput cardoutputt = cardoutput(all);
        favouriteSink.add(cardoutputt);
      }
    });
  }


  Future<List<model2>> fitch() async {
    return cards;
  }

  void dispose() {
    _eventSteamContrller.close();
    _stateStreamController.close();
  }
}
