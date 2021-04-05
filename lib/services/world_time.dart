import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location; //location name for the UI
  String time; // Time at that location
  String date; //Day and Date at that location
  String flag; //url to an asset  flag icon
  String url; //location url for API endpoint
  bool isDayTime; // True or false is daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      Response response = await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offsethr = data['utc_offset'].substring(1, 3);
      String offsetmin = data['utc_offset'].substring(4, 6);
      DateTime now = DateTime.parse(datetime);
      String sign = data['utc_offset'][0];
      if(sign == '+')
        now = now.add(Duration(hours: int.parse(offsethr), minutes: int.parse(offsetmin)));
      else
        now = now.subtract(Duration(hours: int.parse(offsethr), minutes: int.parse(offsetmin)));
      isDayTime = now.hour >= 6 && now.hour <= 19 ? true : false;
      time = DateFormat.jm().format(now);
      date = DateFormat.MMMMEEEEd().format(now);

    }
    catch(e) {
      time = 'No data';
      date = 'No data';
      isDayTime = true;
    }
  }

}