import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 70.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 70.0,
);

const kTextFiledInputDecoration =  InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(Icons.location_city, color: Colors.white,size: 36.0,),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.blueGrey),
  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6.0),),
      borderSide: BorderSide.none),
);