// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> loadData(
  String tableName,
  String columnName,
) async {
  try {
    final supabase = SupaFlow.client;
    final response = await supabase.from(tableName).select(columnName);
    // Print the raw response for debugging purposes
    print('Raw Response: $response');

    return response;
  } catch (e) {
    print('Exception: $e');
    // Return an empty list in case of an exception
    return [];
  }
  // Add your function code here!
}
