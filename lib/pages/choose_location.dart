import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

import '../services/world_time.dart';
import 'dart:core';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'netherlands.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: 'new_zealand.png'),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'iraq.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand.jpeg'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany.png'),
    WorldTime(url: 'Asia/Bermuda', location: 'Bermuda', flag: 'bermuda.jpeg'),
    WorldTime(url: 'America/Bogota', location: 'Bogota', flag: 'columbia.png'),
    WorldTime(url: 'America/Sao_Paulo', location: 'Brasilia', flag: 'brazil.png'),
    WorldTime(url: 'Europe/Brussels', location: 'Brussels', flag: 'belgium.png'),
    WorldTime(url: 'Europe/Bucharest', location: 'Bucharest', flag: 'romania.png'),
    WorldTime(url: 'Europe/Hungary', location: 'Budapest', flag: 'hungary.png'),
    WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Buenos Aires', flag: 'argentina.jpeg'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Casablanca', location: 'Casablanca', flag: 'morocco.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'sri_lanka.jpeg'),
    WorldTime(url: 'Europe/Copenhagen', location: 'Copenhagen', flag: 'denmark.png'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'uae.png'),
    WorldTime(url: 'Europe/Dublin', location: 'Dublin', flag: 'ireland.png'),
    WorldTime(url: 'America/Havana', location: 'Havana', flag: 'cuba.jpeg'),
    WorldTime(url: 'Europe/Helsinki', location: 'Helsinki', flag: 'finland.png'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hong_kong.png'),
    WorldTime(url: 'America/Indiana/Indianapolis', location: 'Indianapolis', flag: 'indiana.png'),
    WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: 'turkey.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'israel.jpeg'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'south_africa.png'),
    WorldTime(url: 'Asia/Amman', location: 'Jordan', flag: 'jordan.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'afghanistan.jpeg'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.png'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'nepal.png'),
    WorldTime(url: 'America/Jamaica', location: 'Kingston', flag: 'jamaica.png'),
    WorldTime(url: 'Asia/Kuala_Lumpur', location: 'Kuala Lumpur', flag: 'malaysia.png'),
    WorldTime(url: 'America/Lima', location: 'Lima', flag: 'peru.png'),
    WorldTime(url: 'Europe/Lisbon', location: 'Lisbon', flag: 'portugal.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'America/Los_Angeles', location: 'Los Angeles', flag: 'usa.png'),
    WorldTime(url: 'Asia/Macau', location: 'Macau', flag: 'china.png'),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'spain.png'),
    WorldTime(url: 'Indian/Maldives', location: 'Male', flag: 'maldives.png'),
    WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'philippines.png'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico City', flag: 'mexico.png'),
    WorldTime(url: 'Europe/Monaco', location: 'Monte Carlo', flag: 'monaco.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'russia.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'New Delhi', flag: 'india.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Europe/Oslo', location: 'Oslo', flag: 'norway.png'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'france.jpeg'),
    WorldTime(url: 'Europe/Prague', location: 'Prague', flag: 'czech.png'),
    WorldTime(url: 'Asia/Pyongyang', location: 'Pyongyang', flag: 'north_korea.png'),
    WorldTime(url: 'Asia/Qatar', location: 'Qatar', flag: 'qatar.png'),
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'saudi_arabia.jpeg'),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'italy.png'),
    WorldTime(url: 'America/Costa_Rica', location: 'San Jose', flag: 'costa_rica.png'),
    WorldTime(url: 'America/Puerto_Rico', location: 'San Juan', flag: 'puerto_rico.png'),
    WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'chile.jpeg'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'china.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(url: 'Europe/Sofia', location: 'Sofia', flag: 'bulgaria.png'),
    WorldTime(url: 'Europe/Stockholm', location: 'Stockholm', flag: 'sweden.png'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'australia_2.png'),
    WorldTime(url: 'Asia/Taipei', location: 'Taipei', flag: 'taiwan.png'),
    WorldTime(url: 'Asia/Tashkent', location: 'Tashkent', flag: 'uzbekistan.jpeg'),
    WorldTime(url: 'Asia/Tbilisi', location: 'Tbilisi', flag: 'georgia.jpeg'),
    WorldTime(url: 'Asia/Tehran', location: 'Tehran', flag: 'iran.png'),
    WorldTime(url: 'Asia/Thimphu', location: 'Thimphu', flag: 'bhutan.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'japan.jpeg'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'canada.jpeg'),
    WorldTime(url: 'Europe/Vienna', location: 'Vienna', flag: 'austria.png'),
    WorldTime(url: 'Europe/Zurich', location: 'Zurich', flag: 'switzerland.png'),
  ];

  void  updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'date': instance.date,
        'isDayTime': instance.isDayTime,
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 20,
        brightness: Brightness.dark,
        iconTheme: IconTheme.of(context),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                hoverColor: Colors.red[200],
                focusColor: Colors.blue[500],
                title: Text(
                    locations[index].location,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                dense: false,
                visualDensity: VisualDensity.comfortable,
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  radius: 22,
                ),
                tileColor: Colors.blue[100],
              ),
            ),
          );
        },
      ),
    );
  }
}
