import 'package:earthide/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async {
     WorldTime instance = WorldTime(location: 'London', flag: 'germany.png', url: 'Europe/Berlin');
     await instance.getTime();
     Navigator.pushReplacementNamed(context, '/home', arguments: {
       'location': instance.location,
       'flag': instance.flag,
       'time': instance.time,
       'isDaytime' : instance.isDaytime,
     });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 80.0,
        ),
      )
    );
  }
}
