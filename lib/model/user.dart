import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//nie chcesz robić osobno finali z imionami, osobno z nazwiskami etc, takie rzeczy się
//raczej nie zdarzają, masz do tego takie świetne narzędzie jak modele, możesz zrobić sobie model,
//tutaj jest to model User i on może przyjmować wszystko co tylko zapragniesz

class User {
  final String name;
  final String surname;
  final IconData icon;

  User({
    required this.name,
    required this.surname,
    required this.icon,
  });
}

 List<User> mockedUsers = [
  User(name: 'Janusz', surname: 'Zupa', icon: Icons.bookmark),
  User(name: 'Barbara', surname: 'Sałata', icon: Icons.ac_unit),
  User(name: 'Major', surname: 'Zakrzewski', icon: Icons.youtube_searched_for),
  User(name: 'Ewelina', surname: 'Kowalka', icon: Icons.adb),
  User(name: 'Ryszard', surname: 'Pająk', icon: Icons.wc),
];
