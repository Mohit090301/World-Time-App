import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    // set background
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo;
    Color txtColor = data['isDayTime'] ? Colors.black : Colors.white60;

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 120),
          child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 45,
                          letterSpacing: 2,
                          color: txtColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                SizedBox(height: 60),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.normal,
                      color: txtColor,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    data['date'],
                    style: TextStyle(
                      fontSize: 41,
                      fontWeight: FontWeight.w400,
                      color: txtColor,
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic result = await Navigator.pushNamed(context, '/location');
          setState(() {
            data = {
              'time': result['time'],
              'location': result['location'],
              'isDayTime': result['isDayTime'],
              'date': result['date'],
              'flag': result['flag']
            };
          });
        },
        child: Icon(
          Icons.location_on_sharp,
          color: Colors.white,
        ),
        backgroundColor: Colors.green[700],
        focusElevation: 15,
      ),

    );
  }
}
