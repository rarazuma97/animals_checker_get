import 'package:flutter/material.dart';

 


 
extension CustomStyles  on Never{
  static const TextStyle regularTextStyle = TextStyle(
    fontFamily: 'HelveticaNeue',
    fontWeight: FontWeight.bold,
    fontSize: 14.0,
    color: Colors.black
  );

  static const TextStyle regularTextStyleLarge = TextStyle(
    fontFamily: 'HelveticaNeue',
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static const TextStyle mediumTextStyle = TextStyle(
    fontFamily: 'HelveticaNeueMedium',
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
  );

  static const TextStyle mediumTextStyleLarge = TextStyle(
    fontFamily: 'HelveticaNeueMedium',
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
  );

  static const TextStyle boldTextStyle = TextStyle(
    fontFamily: 'HelveticaNeueBold',
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );

  static const TextStyle boldTextStyleLarge = TextStyle(
    fontFamily: 'HelveticaNeueBold',
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  // Puoi definire altri stili e dimensioni secondo necessità

}