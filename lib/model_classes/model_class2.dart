import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Excercise {
  String title;
  String sub;
  Icon i;
  Color cr;

  Excercise(this.title, this.sub, this.i, this.cr);

  static List<Excercise> viewEx() {
    return [
      Excercise("Speaking English", "16 Exercises", Icon(Icons.person),
          Color(0xfff78556)),
      Excercise(
          "Reading Speed", "16 Exercises", Icon(Icons.book), Color(0xff297fbe)),
      Excercise("Speaking Spanish", "16 Exercises", Icon(Icons.password),
          Color(0xffFA7693)),
      Excercise("Speaking Japanish Language", "16 Exercises", Icon(Icons.email),
          Color(0xff297fbe)),
      Excercise("Speaking Hindi Language", "16 Exercises",
          Icon(Icons.notifications), Color(0xfff78556)),
      Excercise("Speaking Bengali Language", "16 Exercises", Icon(Icons.person),
          Color(0xff297fbe)),
      // Excercise("Speaking English", "16 Exercises", "Icons.love"),
      // Excercise("Speaking English", "16 Exercises", "Icons.love"),
      // Excercise("Speaking English", "16 Exercises", "Icons.love"),
      // Excercise("Speaking English", "16 Exercises", "Icons.love"),
    ];
  }
}
