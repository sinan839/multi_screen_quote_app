import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:multi_screen_quote_app/model.dart';

class home extends StatelessWidget {
  List<Quote> quotes = [
    Quote(quote: "Life’s short. Eat the dessert.", author: "sahad"),
    Quote(quote: "I need a six-month vacation, twice a year", author: "shijah"),
    Quote(quote: "I came. I saw. I forgot..", author: "sinan"),
    Quote(
      quote: "I followed a diet but it didn’t follow me back. ",
      author: "anjanakrishnan",
    ),
    Quote(
      quote:
          "football is the game of mistakes . those who made less mistake wins the game",
      author: "devan",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Quotes and Author", style: TextStyle(color: Colors.blue)),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(arguments: quotes[index], context, "detail");
            },
            child: Card(
              child: Column(
                children: [
                  Text(quotes[index].quote),
                  SizedBox(height: 25),
                  Text(quotes[index].author),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
