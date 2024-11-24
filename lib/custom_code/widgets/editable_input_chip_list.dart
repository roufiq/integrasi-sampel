// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class EditableInputChipList extends StatefulWidget {
  const EditableInputChipList({
    super.key,
    this.width,
    this.height,
    required this.items,
    required this.onItemDeleted,
  });

  final double? width;
  final double? height;
  final List<String> items;
  final Future Function() onItemDeleted;

  @override
  State<EditableInputChipList> createState() => _EditableInputChipListState();
}

class _EditableInputChipListState extends State<EditableInputChipList> {
  late List<String> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: items.map((item) {
        return InputChip(
          label: Text(item),
          onDeleted: () {
            setState(() {
              items.remove(item);
            });
          },
        );
      }).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    items = widget.items;
  }
}
