import 'package:flutter/material.dart';

class colorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.orange,
    Colors.cyan,
    Colors.teal.shade400,
    Colors.deepOrangeAccent,
    Colors.lime,
    Colors.yellowAccent
  ];

  Stream<Color> getColor() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}
