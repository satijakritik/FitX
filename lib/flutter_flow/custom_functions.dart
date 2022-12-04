import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double currentLevelProgress(int points) {
  // Add your function code here!
  return (points % 3000) / 3000;
}

double circularStepsProgress(
  int steps,
  int dailySteps,
) {
  // Add your function code here!
  return steps / dailySteps;
}

double spo2Progress(double spo2) {
  // Add your function code here!
  return spo2 / 100;
}

int pointsHome(int points) {
  // Add your function code here!
  return points % 3000;
}

int findLevel(int points) {
  // Add your function code here!
  return (points / 3000).floor();
}
