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

import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<dynamic>> searchTable(String search) async {
  try {
    final supabase = SupaFlow.client;
    final response = await supabase.rpc('search_table_sampel', params: {
      'p_search_term': search,
    });
    // Print the raw response for debugging purposes
    print('Raw Response: $response');

    return response;
  } catch (e) {
    print('Exception: $e');
    // Return an empty list in case of an exception
    return [];
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
