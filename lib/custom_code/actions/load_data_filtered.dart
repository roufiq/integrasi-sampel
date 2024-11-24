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

Future<List<dynamic>> loadDataFiltered(
  String tableName,
  String columnName,
  String filteredColumn,
  String filteredValue,
  String orderColumn,
) async {
  // Add your function code here!
  try {
    final supabase = SupaFlow.client;
    var response;
    if (filteredColumn == 'All')
      response = await supabase.from(tableName).select(columnName);
    else
      response = await supabase
          .from(tableName)
          .select(columnName)
          .eq(filteredColumn, filteredValue)
          .order(orderColumn);
    // Print the raw response for debugging purposes
    print('Raw Response: $response');

    return response;
  } catch (e) {
    print('Exception: $e');
    // Return an empty list in case of an exception
    return [];
  }
}
