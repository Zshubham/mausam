import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mausam_app/services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void initState(){
    super.initState();
    getLocationData();
  }

  void getLocationData() async{

    var weatherData = await WeatherModel().getLocationWeather();


    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData,);
    }));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/unsplash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: SpinKitCubeGrid(color: Colors.white, size:50.0 ,),),
          Center(child: Text('MAUSAM',style: TextStyle(color: Color(0xFF015E8A),fontSize: 50.0, fontWeight: FontWeight.bold,),),)
        ],
      ),
    ),
    );
  }
}
