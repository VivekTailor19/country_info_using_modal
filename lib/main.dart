
import 'package:flutter/material.dart';

import 'home_country_modal.dart';
import 'ui_country_modal.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          "/" :(context) =>  HomeScreen(),
          "UI" : (context) => Country_UI(),


        }
    ),);
}