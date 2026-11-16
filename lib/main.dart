import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery/firebase_options.dart';
import 'package:grocery/screens/bottom_nav_bar_screen.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(BottomNavBarScreen());
}
