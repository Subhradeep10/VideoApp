import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:videoapp/views/screens/add_video_screen.dart';

import 'controllers/auth_controller.dart';

final pages = [
  Text('Home Page'),
  Text('Search Page'),
  AddVideoScreen(),
  Text('Message Page'),
  Text('Profile Page'),
];

//Colors
const backgroundColor = Color.fromARGB(255, 4, 31, 53);
var buttonColor = Color.fromARGB(255, 242, 249, 255);

//Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//Controller
var authController = AuthController.instance;
