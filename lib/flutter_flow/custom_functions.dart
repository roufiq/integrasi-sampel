import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? formatUppercase(String? input) {
  input = input ?? '';
  String result = input.toUpperCase();
  return result;
}

List<String> stringToList(String str) {
  return str.split(',');
}

List<String> removeDuplicates(List<String> originalList) {
  return originalList.toSet().toList();
}

String generatePassword(int length) {
  const _allowedChars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#%^&*';
  final _random = math.Random();
  return List.generate(length,
      (index) => _allowedChars[_random.nextInt(_allowedChars.length)]).join();
}

String capitalizeFirst(String text) {
  return text
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}

List<int> sortList(
  List<int> initialList,
  bool ascending,
) {
  List<int> sortedList = List.from(initialList);
  sortedList.sort();
  if (!ascending) {
    sortedList = sortedList.reversed.toList();
  }
  return sortedList;
}

int stringOccurrences(
  String mainString,
  String subString,
) {
  return mainString.split(subString).length - 1;
}
