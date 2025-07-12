import 'package:flutter/material.dart';
import 'package:multi_screen_quote_app/details.dart';
import 'package:multi_screen_quote_app/home.dart';

void main() {
  runApp( MaterialApp(home:home(),routes: {
    "detail":(context)=>details(),
  },debugShowCheckedModeBanner: false,));
}
